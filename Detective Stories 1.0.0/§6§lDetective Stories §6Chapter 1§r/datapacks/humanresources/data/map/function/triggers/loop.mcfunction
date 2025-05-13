# Если рядом нет маркера-триггера
schedule function map:triggers/loop 1t
execute as @a at @s unless entity @e[type=marker,distance=..3,limit=1,sort=nearest,nbt={data:{trigger:1b,used:0b}}] run return 0

# Если у игрока есть тэг что он неуязвим к триггерам
execute as @a at @s if entity @s[tag=tylerthecreator] run return 0

# Если рядом есть маркер-триггер
execute as @a at @s run data modify storage minecraft:trigger trigger.name set from entity @e[type=marker,distance=..3,limit=1,sort=nearest,nbt={data:{trigger:1b,used:0b}}] Tags[0]
execute as @a at @s if entity @e[type=marker,distance=..3,limit=1,sort=nearest,nbt={data:{trigger:1b,used:0b}}] as @e[type=marker,distance=..3,limit=1,sort=nearest,nbt={data:{trigger:1b,used:0b}}] at @s run function map:triggers/get_id with storage trigger trigger