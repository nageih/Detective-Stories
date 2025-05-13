# Цикличная функция

### Проверка на голод
execute as @a at @s if data entity @s {foodLevel:20} run effect give @s minecraft:hunger 12 127 true
execute as @a at @s if data entity @s {foodLevel:1} run effect give @s minecraft:saturation 1 4 true
execute as @a at @s if data entity @s {foodLevel:0} run effect give @s minecraft:saturation 1 4 true

# Mark (a player)
execute if score @a[sort=random,limit=1] markiplier matches 1.. run function map:most_important/markiplier/turning
execute if score @a[sort=random,limit=1] markiplier matches ..-1 run function map:most_important/markiplier/turning
# Bob craft (a furry)
execute if score @a[sort=random,limit=1] bobicraft matches 1.. run function map:most_important/bobicraft/turning
execute if score @a[sort=random,limit=1] bobicraft matches ..-1 run function map:most_important/bobicraft/turning
# Лицензионная музыка
execute if score @a[sort=random,limit=1] copyright matches 1.. run function map:most_important/copyright/turning
execute if score @a[sort=random,limit=1] copyright matches ..-1 run function map:most_important/copyright/turning

# Частицы снега
execute as @a[limit=1] at @s if block ~ ~4 ~ air run particle minecraft:cherry_leaves ~ ~19 ~ 15 5 10 2 20 force
execute as @a[limit=1] at @s unless block ~ ~4 ~ air run particle minecraft:cherry_leaves ~ ~26 ~ 15 5 10 2 20 force

#execute as @e[tag=phys.cube,type=shulker] at @s run function map:physics/box/ray/cast