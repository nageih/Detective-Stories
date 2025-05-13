# Рандом на 10% шанса смены состояния
execute store result score #markiplier random run random value 1..20

# Проверка какое число
execute if score #markiplier random matches 10 run scoreboard players add #markiplier status 1

execute if score #markiplier status matches 2 run scoreboard players set #markiplier status 0
execute if score #markiplier status matches 0 run bossbar set minecraft:debug_markiplier name [{"text": "\uB005", "color": "#fdffff","font":"minecraft:default","shadow_color":[0,0,0,0]},{"translate": "space.-11","font":"space"},{"text": "", "color": "#feffff"}]
execute if score #markiplier status matches 1 run bossbar set minecraft:debug_markiplier name [{"text": "\uB006", "color": "#fdffff","font":"minecraft:default","shadow_color":[0,0,0,0]},{"translate": "space.-11","font":"space"},{"text": "", "color": "#feffff"}]

schedule function map:most_important/markiplier/random 1t