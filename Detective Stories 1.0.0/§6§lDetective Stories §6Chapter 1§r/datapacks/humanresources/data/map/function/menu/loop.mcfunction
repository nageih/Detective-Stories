schedule function map:menu/loop 1t
execute as @e[tag=player] run gamemode spectator @s
execute as @e[tag=player] run spectate @e[tag=aj.main_menu.camera,limit=1,type=item_display]

# Если нажата клавиша W
execute as @a[tag=player] if predicate map:player/input_w unless score #input_cooldown menu matches 1 if score #menu_state menu matches 0 run scoreboard players add #input_w menu 1
execute if score #input_w menu matches 1.. run scoreboard players remove #vertical_counter menu 1
execute if score #input_w menu matches 1.. run scoreboard players set #input_cooldown menu 1
execute if score #input_w menu matches 1.. run schedule function map:menu/input_cooldown 3t
execute if score #input_w menu matches 1.. run scoreboard players set #input_w menu 0

# Если нажата клавиша S
execute as @a[tag=player] if predicate map:player/input_s unless score #input_cooldown menu matches 1 if score #menu_state menu matches 0 run scoreboard players add #input_s menu 1
execute if score #input_s menu matches 1.. run scoreboard players add #vertical_counter menu 1
execute if score #input_s menu matches 1.. run scoreboard players set #input_cooldown menu 1
execute if score #input_s menu matches 1.. run schedule function map:menu/input_cooldown 3t
execute if score #input_s menu matches 1.. run scoreboard players set #input_s menu 0

## Нажатие в главном меню
# Выбрано начало игры
execute if score #menu_state menu matches 0 if score #vertical_counter menu matches 0 as @a[tag=player] if predicate map:player/input_jump run function map:menu/start
# Выбран выбор главы
execute if score #menu_state menu matches 0 if score #vertical_counter menu matches 1 as @a[tag=player] if predicate map:player/input_jump run schedule function map:menu/chapter_select 1t
# Выбраны настройки
execute if score #menu_state menu matches 0 if score #vertical_counter menu matches 2 as @a[tag=player] if predicate map:player/input_jump run schedule function map:menu/settings 1t
# Выбраны кредиты
execute if score #menu_state menu matches 0 if score #vertical_counter menu matches 3 as @a[tag=player] if predicate map:player/input_jump run schedule function map:menu/credits 1t
# Выбран выход в главное меню
execute if score #menu_state menu matches 0 if score #vertical_counter menu matches 4 as @a[tag=player] if predicate map:player/input_jump as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/main_exit_pressed/play
execute if score #menu_state menu matches 0 if score #vertical_counter menu matches 4 as @a[tag=player] if predicate map:player/input_jump run tag @a remove already_first
execute if score #menu_state menu matches 0 if score #vertical_counter menu matches 4 as @a[tag=player] if predicate map:player/input_jump run title @a times 15 5 5
execute if score #menu_state menu matches 0 if score #vertical_counter menu matches 4 as @a[tag=player] if predicate map:player/input_jump run title @a title {"text":"7","font":"minecraft:frame"}
execute if score #menu_state menu matches 0 if score #vertical_counter menu matches 4 as @a[tag=player] if predicate map:player/input_jump run schedule clear map:menu/loop
execute if score #menu_state menu matches 0 if score #vertical_counter menu matches 4 as @a[tag=player] if predicate map:player/input_jump run schedule function map:lobby/teleport 15t

# Лупы
execute if score #menu_state menu matches 1 run function map:menu/chapter_select_loop
execute if score #menu_state menu matches 2 run function map:menu/settings_loop
execute if score #menu_state menu matches 3 run function map:menu/credits_loop

# Лимит по пролистыванию
execute if score #vertical_counter menu matches ..-1 run scoreboard players set #vertical_counter menu 4
execute if score #vertical_counter menu matches 5.. run scoreboard players set #vertical_counter menu 0

execute if score #vertical_counter_prev menu = #vertical_counter menu run return 0
execute unless score #vertical_counter_prev menu = #vertical_counter menu as @a at @s run playsound block.note_block.basedrum master @s ~ ~ ~ 0.7 1
execute unless score #vertical_counter_prev menu = #vertical_counter menu run scoreboard players operation #vertical_counter_prev menu = #vertical_counter menu

## Листание главного меню
# Выбрано начало игры
execute if score #menu_state menu matches 0 if score #vertical_counter menu matches 0 as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/main_start/play
# Выбран выбор главы
execute if score #menu_state menu matches 0 if score #vertical_counter menu matches 1 as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/main_chapter/play
# Выбраны настройки
execute if score #menu_state menu matches 0 if score #vertical_counter menu matches 2 as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/main_settings/play
# Выбраны кредиты
execute if score #menu_state menu matches 0 if score #vertical_counter menu matches 3 as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/main_credits/play
# Выбран выход в главное меню
execute if score #menu_state menu matches 0 if score #vertical_counter menu matches 4 as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/main_exit/play
