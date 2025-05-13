# State отвечает за строку, на которой будет находится текст
execute as @a[tag=player,limit=1] at @s anchored eyes if data storage youknowwhatelseismassive:lowtaperfade {state:1} run tp @n[tag=text_test,type=minecraft:text_display,limit=1] ^0.25 ^-0.185 ^0.3
execute as @a[tag=player,limit=1] at @s anchored eyes if data storage youknowwhatelseismassive:lowtaperfade {state:2} run tp @n[tag=text_test,type=minecraft:text_display,limit=1] ^0.25 ^-0.2 ^0.3
execute as @a[tag=player,limit=1] at @s anchored eyes if data storage youknowwhatelseismassive:lowtaperfade {state:3} run tp @n[tag=text_test,type=minecraft:text_display,limit=1] ^0.25 ^-0.215 ^0.3
execute as @a[tag=player,limit=1] at @s anchored eyes if data storage youknowwhatelseismassive:lowtaperfade {state:4} run tp @n[tag=text_test,type=minecraft:text_display,limit=1] ^0.25 ^-0.23 ^0.3

# Ну а это уже не зависит от состояния и всегда будет на одном уровне
execute as @a[tag=player,limit=1] at @s anchored eyes run tp @n[tag=dialogue_box,type=minecraft:item_display,limit=1] ^0.25 ^-0.225 ^0.31
execute as @a[tag=player,limit=1] at @s anchored eyes run tp @n[tag=dialogue_rmb_text,type=minecraft:text_display,limit=1] ^0.312 ^-0.265 ^0.31

# Если вдруг будет вариант выбора диалога
execute as @a[tag=player,limit=1] at @s anchored eyes run tp @n[tag=dialogue_variant,type=minecraft:text_display,limit=1] ^0.35 ^-0.1 ^0.3
execute if entity @p[tag=db_selecting,limit=1] run function map:dialogue/slot_loop with storage youknowwhatelseismassive:lowtaperfade dialogue

# Цикл
schedule function map:dialogue/loop 1t
