# Анимация появления первой настройки
execute as @e[tag=aj.pre_menu.root] run function animated_java:pre_menu/animations/setting1_appear/play

# Звук нажатия на кнопку в лобби
playsound map.interaction.slot_machine.spin master @a -176.0 48 48.8 1 0

# Хитбоксы языков
data merge entity f99dbac7-2884-4037-a9a7-20d89c05d877 {width:0.5f}
data merge entity 56f0739b-f89d-41d5-b053-7dd2a2813318 {width:0.5f}
data merge entity 2dc0d975-8b96-447a-a314-eea007ed4c72 {width:0.5f}

# Телепортация в настройку
tp @a -187 46 51 180 0

# Отображение боссбаров
bossbar set minecraft:debug_markiplier players @a
bossbar set minecraft:quests players @a
bossbar set minecraft:quests_name players @a
bossbar set minecraft:quests_distance players @a
bossbar set minecraft:debug_markiplier visible false
bossbar set minecraft:quests visible false
bossbar set minecraft:quests_name visible false
bossbar set minecraft:quests_distance visible false
bossbar set minecraft:debug_markiplier visible true
bossbar set minecraft:quests visible false
bossbar set minecraft:quests_name visible false
bossbar set minecraft:quests_distance visible false
scoreboard objectives add markiplier trigger
scoreboard objectives add bobicraft trigger
scoreboard objectives add bobicraft trigger
scoreboard players enable @a markiplier
scoreboard players enable @a bobicraft
scoreboard players enable @a copyright
function map:quests/visual_disable

# Начало музыки
function map:loop/butter_dog

# Забирает ачивку (то что игрок нажал на кнопку старта настроек)
advancement revoke @a only map:click/lobby_setup