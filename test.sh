#!/bin/bash

# --- 初始设置与参数获取 (同前) ---
COMMIT_HASH="${1:-HEAD}"
OUTPUT_ARCHIVE_PARAM="$2"

if ! git rev-parse --verify "$COMMIT_HASH" >/dev/null 2>&1; then
  echo "错误：无效的 commit 哈希: $COMMIT_HASH"
  exit 1
fi

SHORT_COMMIT_HASH=$(git rev-parse --short "$COMMIT_HASH")

if [ -z "$OUTPUT_ARCHIVE_PARAM" ]; then
  OUTPUT_ARCHIVE="commit_${SHORT_COMMIT_HASH}_files.tar.gz"
else
  OUTPUT_ARCHIVE="$OUTPUT_ARCHIVE_PARAM"
fi

mapfile -t FILES_TO_ARCHIVE_ARRAY < <(git diff-tree --no-commit-id --name-only -r --diff-filter=AMCR "$COMMIT_HASH")

if [ ${#FILES_TO_ARCHIVE_ARRAY[@]} -eq 0 ]; then
  echo "在 commit $SHORT_COMMIT_HASH ($COMMIT_HASH) 中没有找到新增、修改、复制或重命名的文件。"
  exit 0
fi

echo "将要打包来自 commit $SHORT_COMMIT_HASH 的以下文件:"
printf "  %s\n" "${FILES_TO_ARCHIVE_ARRAY[@]}"
echo ""
echo "输出到: $OUTPUT_ARCHIVE"
# --- 初始设置结束 ---

# 用于存放调试文件的目录
DEBUG_DIR="archive_debug_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$DEBUG_DIR"
echo "调试文件将保存在: $DEBUG_DIR"

TEMP_TAR_FILE="$DEBUG_DIR/intermediate_archive.tar" # 中间tar文件的路径
FINAL_OUTPUT_FILE="$OUTPUT_ARCHIVE" # 最终输出文件的名称

ARCHIVE_GENERATED_SUCCESSFULLY=false # 标记归档是否成功

# 根据输出文件名后缀判断归档格式
ARCHIVE_FORMAT=""
COMPRESSION_COMMAND=""
NEEDS_COMPRESSION=false

if [[ "$FINAL_OUTPUT_FILE" == *.zip ]]; then
  ARCHIVE_FORMAT="zip"
elif [[ "$FINAL_OUTPUT_FILE" == *.tar ]]; then # 无压缩的tar包
  ARCHIVE_FORMAT="tar"
elif [[ "$FINAL_OUTPUT_FILE" == *.tar.gz ]] || [[ "$FINAL_OUTPUT_FILE" == *.tgz ]]; then
  ARCHIVE_FORMAT="tar" # 基础格式是tar
  COMPRESSION_COMMAND="gzip"
  NEEDS_COMPRESSION=true
elif [[ "$FINAL_OUTPUT_FILE" == *.tar.bz2 ]] || [[ "$FINAL_OUTPUT_FILE" == *.tbz2 ]]; then
  ARCHIVE_FORMAT="tar" # 基础格式是tar
  COMPRESSION_COMMAND="bzip2"
  NEEDS_COMPRESSION=true
else
  echo "警告: 无法识别 '$FINAL_OUTPUT_FILE' 的文件扩展名。将默认尝试创建 .tar.gz 文件。"
  # 确保如果用户给了像 my_archive 这样的名字，它会变成 my_archive.tar.gz
  if ! [[ "$FINAL_OUTPUT_FILE" == *.tar.gz ]]; then
    FINAL_OUTPUT_FILE="${FINAL_OUTPUT_FILE}.tar.gz"
  fi
  ARCHIVE_FORMAT="tar"
  COMPRESSION_COMMAND="gzip"
  NEEDS_COMPRESSION=true
  echo "输出文件将是: $FINAL_OUTPUT_FILE"
fi

# --- 归档与调试逻辑 ---

echo ""
echo "步骤 1: 从 'git archive' 生成基础归档文件 (格式: $ARCHIVE_FORMAT)..."

# 对于 zip 格式, -o 参数是必须的，并且行为与其他格式不同
if [ "$ARCHIVE_FORMAT" == "zip" ]; then
    git archive --format=zip -o "$FINAL_OUTPUT_FILE" "$COMMIT_HASH" "${FILES_TO_ARCHIVE_ARRAY[@]}"
    GIT_ARCHIVE_EXIT_CODE=$?
    TARGET_FILE_TO_CHECK="$FINAL_OUTPUT_FILE" # zip 直接生成最终文件
else # 对于 .tar, .tar.gz, .tar.bz2, 我们首先创建 .tar 文件
    # 将 git archive 的标准输出重定向到临时 .tar 文件
    git archive --format=tar "$COMMIT_HASH" "${FILES_TO_ARCHIVE_ARRAY[@]}" > "$TEMP_TAR_FILE"
    GIT_ARCHIVE_EXIT_CODE=$?
    TARGET_FILE_TO_CHECK="$TEMP_TAR_FILE" # 首先检查这个临时的 .tar 文件
fi

if [ $GIT_ARCHIVE_EXIT_CODE -ne 0 ]; then
    echo "错误: 'git archive' 执行失败，退出码: $GIT_ARCHIVE_EXIT_CODE"
elif [ ! -s "$TARGET_FILE_TO_CHECK" ]; then # -s 检查文件是否存在且大小大于0
    echo "错误: 'git archive' 执行成功 (退出码 0)，但生成的归档文件 '$TARGET_FILE_TO_CHECK' 为空或未创建。"
    echo "       这可能发生在文件列表对 git-archive 而言为空，或所有文件均无效的情况下。"
else
    echo "步骤 1 完成: 基础归档文件 '$TARGET_FILE_TO_CHECK' 已创建。"

    # 如果仅需 .tar 或 .zip (无需额外压缩), 主要文件创建已完成
    if [ "$NEEDS_COMPRESSION" = false ]; then
        if [ "$ARCHIVE_FORMAT" == "zip" ]; then
            echo "正在校验 ZIP 文件 '$FINAL_OUTPUT_FILE'..."
            # 使用 zip -T 测试 zip 文件的完整性。输出重定向以避免污染脚本输出。
            if zip -T "$FINAL_OUTPUT_FILE" > /dev/null 2>&1; then
                echo "ZIP 文件 '$FINAL_OUTPUT_FILE' 校验通过，看起来是有效的。"
                ARCHIVE_GENERATED_SUCCESSFULLY=true
            else
                echo "错误: ZIP 文件 '$FINAL_OUTPUT_FILE' 已损坏或无效。"
            fi
        elif [ "$ARCHIVE_FORMAT" == "tar" ]; then # 无压缩的 .tar
             echo "正在校验 TAR 文件 '$FINAL_OUTPUT_FILE' (即之前的 '$TARGET_FILE_TO_CHECK')..."
             # 注意：此时 $FINAL_OUTPUT_FILE 和 $TARGET_FILE_TO_CHECK 指向同一个无压缩的 .tar 文件
             tar -tvf "$FINAL_OUTPUT_FILE" > "$DEBUG_DIR/tar_list.txt" 2> "$DEBUG_DIR/tar_errors.txt"
             TAR_TVF_EXIT_CODE=$?
             if [ $TAR_TVF_EXIT_CODE -eq 0 ]; then
                 echo "TAR 文件 '$FINAL_OUTPUT_FILE' 校验通过，内容列表已存至 $DEBUG_DIR/tar_list.txt"
                 ARCHIVE_GENERATED_SUCCESSFULLY=true
             else
                 echo "错误: TAR 文件 '$FINAL_OUTPUT_FILE' 已损坏或无效 (tar -tvf 退出码: $TAR_TVF_EXIT_CODE)。"
                 echo "       'tar -tvf' 的错误信息已存至 $DEBUG_DIR/tar_errors.txt"
             fi
        fi
    else # 如果需要压缩 (tar.gz, tar.bz2)
        echo ""
        echo "步骤 2: 校验中间 TAR 文件 '$TEMP_TAR_FILE'..."
        # 使用 'tar -tvf' 列出内容并校验 .tar 文件的有效性
        # 将标准输出 (文件列表) 和标准错误分别重定向到调试文件
        tar -tvf "$TEMP_TAR_FILE" > "$DEBUG_DIR/intermediate_tar_list.txt" 2> "$DEBUG_DIR/intermediate_tar_errors.txt"
        TAR_TVF_EXIT_CODE=$?

        if [ $TAR_TVF_EXIT_CODE -eq 0 ]; then
            echo "步骤 2 完成: '$TEMP_TAR_FILE' 看起来是一个有效的 .tar 文件。"
            echo "  其内容列表已存至: $DEBUG_DIR/intermediate_tar_list.txt"
            echo ""
            echo "步骤 3: 使用 '$COMPRESSION_COMMAND' 将 '$TEMP_TAR_FILE' 压缩为 '$FINAL_OUTPUT_FILE'..."
            if [ "$COMPRESSION_COMMAND" == "gzip" ]; then
                gzip -c "$TEMP_TAR_FILE" > "$FINAL_OUTPUT_FILE" # -c 表示输出到标准输出，然后重定向
            elif [ "$COMPRESSION_COMMAND" == "bzip2" ]; then
                bzip2 -c "$TEMP_TAR_FILE" > "$FINAL_OUTPUT_FILE"
            fi
            COMPRESSION_EXIT_CODE=$?

            if [ $COMPRESSION_EXIT_CODE -eq 0 ] && [ -s "$FINAL_OUTPUT_FILE" ]; then
                echo "步骤 3 完成: 已创建压缩文件 '$FINAL_OUTPUT_FILE'。"
                ARCHIVE_GENERATED_SUCCESSFULLY=true # 初步标记成功

                # 对最终的 .tar.gz/.tar.bz2 进行额外校验 (可选但推荐)
                echo "额外校验: 尝试列出 '$FINAL_OUTPUT_FILE' 的内容..."
                if [ "$COMPRESSION_COMMAND" == "gzip" ]; then
                    # 解压到标准输出，然后通过管道传给 tar -tvf
                    gunzip -c "$FINAL_OUTPUT_FILE" | tar -tvf - > "$DEBUG_DIR/final_archive_list.txt" 2> "$DEBUG_DIR/final_archive_errors.txt"
                elif [ "$COMPRESSION_COMMAND" == "bzip2" ]; then
                     bunzip2 -c "$FINAL_OUTPUT_FILE" | tar -tvf - > "$DEBUG_DIR/final_archive_list.txt" 2> "$DEBUG_DIR/final_archive_errors.txt"
                fi
                if [ $? -eq 0 ]; then # $? 是管道中最后一个命令(tar)的退出码
                    echo "额外校验成功。内容列表已存至 $DEBUG_DIR/final_archive_list.txt"
                else
                    echo "错误: 额外校验失败。错误信息已存至 $DEBUG_DIR/final_archive_errors.txt"
                    ARCHIVE_GENERATED_SUCCESSFULLY=false # 如果最终校验失败，则标记为失败
                fi
            else
                echo "错误: 使用 '$COMPRESSION_COMMAND' 压缩失败 (退出码: $COMPRESSION_EXIT_CODE) 或结果文件为空。"
            fi
        else
            echo "错误: 步骤 2 失败。'$TEMP_TAR_FILE' 不是一个有效的 .tar 文件 (tar -tvf 退出码: $TAR_TVF_EXIT_CODE)。"
            echo "       这表明 'git archive' 可能生成了损坏的 .tar 数据流。"
            echo "       'tar -tvf' 的错误信息已存至: $DEBUG_DIR/intermediate_tar_errors.txt"
            echo "       中间 .tar 文件 (可能已损坏) 是: $TEMP_TAR_FILE"
        fi
    fi
fi

echo ""
if [ "$ARCHIVE_GENERATED_SUCCESSFULLY" = true ]; then
  echo "成功: 已创建归档文件: $FINAL_OUTPUT_FILE"
else
  echo "失败: 未能创建有效的归档文件。"
  echo "       请检查上述信息以及调试目录 '$DEBUG_DIR' 中的文件以获取更多线索。"
  exit 1
fi

# echo "如果不再需要调试文件，可以删除调试目录: rm -rf \"$DEBUG_DIR\""
exit 0