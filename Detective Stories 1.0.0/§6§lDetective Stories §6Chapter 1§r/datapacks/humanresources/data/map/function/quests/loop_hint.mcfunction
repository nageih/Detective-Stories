# Обновляем функцию каждую тик
schedule function map:quests/loop_hint 1t

# Получаем координаты цели (где setworldspawn установлен)
execute store result score @p quest_pos.x run data get entity @p SpawnX
execute store result score @p quest_pos.z run data get entity @p SpawnZ

# Получаем текущие координаты игрока
execute store result score @p pos.x run data get entity @p Pos[0] 1
execute store result score @p pos.z run data get entity @p Pos[2] 1

# Вычисляем разницу координат
scoreboard players operation @p pos.x -= @p quest_pos.x
scoreboard players operation @p pos.z -= @p quest_pos.z

# Используем абсолютные значения разницы для обоих направлений
scoreboard players operation @p abs.x = @p pos.x
scoreboard players operation @p abs.z = @p pos.z

# Если pos.x или pos.z отрицательны, мы делаем их положительными (абсолютные значения)
execute if score @p pos.x matches ..-1 run scoreboard players operation @p abs.x -= @p pos.x
execute if score @p pos.z matches ..-1 run scoreboard players operation @p abs.z -= @p pos.z
execute if score @p pos.x matches ..-1 run scoreboard players operation @p abs.x -= @p pos.x
execute if score @p pos.z matches ..-1 run scoreboard players operation @p abs.z -= @p pos.z

# Суммируем абсолютное расстояние по осям
scoreboard players operation @p distance = @p abs.x
scoreboard players operation @p distance += @p abs.z

# Выводим расстояния в боссбар
bossbar set minecraft:quests_distance name ["",{"translate":"map.quests.target_blocks","color":"#FEFFFF","shadow_color":[0,0,0,0]},{"score":{"name":"@p[limit=1]","objective":"distance"},"color":"#FEFFFF","shadow_color":[0,0,0,0]},{"translate":"map.quests.blocks","color":"#FEFFFF","shadow_color":[0,0,0,0]}]