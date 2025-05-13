# Возврат ачивки
advancement revoke @a only map:click/lobby_continue

# КД
execute if entity @e[tag=setup_continue,tag=cooldown] run return 0
tag @e[tag=setup_continue] add cooldown
data merge entity @e[tag=setup_continue,limit=1,type=interaction] {response:0b}
schedule function map:lobby/setup_cooldown 1s

# Добавляет число при нажатии на кнопку "Продолжить"
scoreboard players add #setup status 1
# Анимация нажатия кнопки
execute unless score #setup status matches 5 as @e[tag=aj.pre_menu.root] run function animated_java:pre_menu/animations/continue_pressed/play
# Звук при нажатии на кнопку
playsound block.note_block.hat master @a -186.5 46.125 50.5 1 0


## Какое состояние

# Настройка языка
#execute if score #setup status matches 0 as @e[tag=aj.pre_menu.root] run function animated_java:pre_menu/animations/continue_appear/play
execute if score #setup status matches 0 as @e[tag=aj.pre_menu.root] run function animated_java:pre_menu/animations/setting1_appear/play

# Пару слов про оптифайн и содиум
execute if score #setup status matches 1 run schedule clear map:most_important/markiplier/random
execute if score #setup status matches 1 run schedule clear map:most_important/bobicraft/random
execute if score #setup status matches 1 run scoreboard players set #markiplier_turn status 1
execute if score #setup status matches 1 run scoreboard players set #bobicraft_turn status 1
execute if score #setup status matches 1 run bossbar set minecraft:debug_markiplier name [{"text": "TEST TEST TEST", "color": "#fdffff","font":"minecraft:default","shadow_color":[0,0,0,0]},{"translate": "space.52","font":"space"},{"text": "", "color": "#feffff"}]
execute if score #setup status matches 1 run data merge entity f99dbac7-2884-4037-a9a7-20d89c05d877 {width:0.0f}
execute if score #setup status matches 1 run data merge entity 56f0739b-f89d-41d5-b053-7dd2a2813318 {width:0.0f}
execute if score #setup status matches 1 run data merge entity 2dc0d975-8b96-447a-a314-eea007ed4c72 {width:0.0f}
execute if score #setup status matches 1 as @e[tag=aj.pre_menu.root] run function animated_java:pre_menu/animations/setting1_disappear/play
execute if score #setup status matches 1 as @e[tag=aj.pre_menu.root] run function animated_java:pre_menu/animations/setting2_appear/play

# Потрясная графика
execute if score #setup status matches 2 run data merge entity 058ed7dc-0ebc-45c3-9247-69362399c030 {width:0f}
execute if score #setup status matches 2 as @e[tag=aj.pre_menu.root] run function animated_java:pre_menu/animations/setting2_disappear/play
execute if score #setup status matches 2 as @e[tag=aj.pre_menu.root] run function animated_java:pre_menu/animations/setting5_appear/play

# Про яркость
execute if score #setup status matches 3 run bossbar set minecraft:debug_markiplier name [{"text": "\uB007", "color": "#fdffff","font":"minecraft:default","shadow_color":[0,0,0,0]},{"translate": "space.-11","font":"space"},{"text": "", "color": "#feffff"}]
execute if score #setup status matches 3 as @e[tag=aj.pre_menu.root] run function animated_java:pre_menu/animations/setting5_disappear/play
execute if score #setup status matches 3 as @e[tag=aj.pre_menu.root] run function animated_java:pre_menu/animations/setting3_appear/play

# Авторские права
execute if score #setup status matches 4 run data merge entity 058ed7dc-0ebc-45c3-9247-69362399c030 {width:1f}
execute if score #setup status matches 4 as @e[tag=aj.pre_menu.root] run function animated_java:pre_menu/animations/setting3_disappear/play
execute if score #setup status matches 4 as @e[tag=aj.pre_menu.root] run function animated_java:pre_menu/animations/setting4_appear/play


# Конец
execute if score #setup status matches 5 as @e[tag=aj.pre_menu.root] run function animated_java:pre_menu/animations/setting4_disappear/play
execute if score #setup status matches 5 as @e[tag=aj.pre_menu.root] run function animated_java:pre_menu/animations/continue_disappear/play
execute if score #setup status matches 5 run data merge entity 058ed7dc-0ebc-45c3-9247-69362399c030 {width:0f}
execute if score #setup status matches 5 run data merge entity 9407ae12-f839-4cce-be36-8c7ee5e16dd1 {width:0.0f}
execute if score #setup status matches 5 run tag @a remove language_selected
execute if score #setup status matches 5 run tag @a add player
execute if score #setup status matches 5 run tag @a add already_first
execute if score #setup status matches 5 run schedule clear map:loop/butter_dog
execute if score #setup status matches 5 run stopsound @a * map.music.butterdog
execute if score #setup status matches 5 run title @a times 30 10 10
execute if score #setup status matches 5 run title @a title {"text":"7","font":"frame"}
execute if score #setup status matches 5 run schedule function map:menu/init 30t
execute if score #setup status matches 5 as @a at @s run playsound map.random.butterdog_reverb master @a ~ ~1 ~ 0.4 1
execute if score #setup status matches 5 run scoreboard players set #setup status 0