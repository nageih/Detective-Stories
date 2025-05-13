# Рандом на 10% шанса смены состояния
execute store result score #bobicraft random run random value 1..20

# Проверка какое число
execute if score #bobicraft random matches 10 run scoreboard players add #bobicraft status 1

execute if score #bobicraft status matches 2 run scoreboard players set #bobicraft status 0
execute if score #bobicraft status matches 0 run bossbar set minecraft:debug_markiplier name [{"text": "\uB009", "color": "#fdffff","font":"minecraft:default","shadow_color":[0,0,0,0]},{"translate": "space.-11","font":"space"},{"text": "", "color": "#feffff"}]
execute if score #bobicraft status matches 1 run bossbar set minecraft:debug_markiplier name [{"text": "\uB010", "color": "#fdffff","font":"minecraft:default","shadow_color":[0,0,0,0]},{"translate": "space.-11","font":"space"},{"text": "", "color": "#feffff"}]

schedule function map:most_important/bobicraft/random 1t