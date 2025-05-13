# Если нажата клавиша A
execute as @a[tag=player] if predicate map:player/input_a unless score #input_cooldown menu matches 1 run scoreboard players add #input_a menu 1
execute if score #input_a menu matches 1.. run scoreboard players remove #horizontal_counter menu 1
execute if score #input_a menu matches 1.. run scoreboard players set #input_cooldown menu 1
execute if score #input_a menu matches 1.. run schedule function map:menu/input_cooldown 3t
execute if score #input_a menu matches 1.. run scoreboard players set #input_a menu 0

# Если нажата клавиша D
execute as @a[tag=player] if predicate map:player/input_d unless score #input_cooldown menu matches 1 run scoreboard players add #input_d menu 1
execute if score #input_d menu matches 1.. run scoreboard players add #horizontal_counter menu 1
execute if score #input_d menu matches 1.. run scoreboard players set #input_cooldown menu 1
execute if score #input_d menu matches 1.. run schedule function map:menu/input_cooldown 3t
execute if score #input_d menu matches 1.. run scoreboard players set #input_d menu 0

## Нажатие в настройках
# Выбрано вернуться назад
execute as @a[tag=player] if predicate map:player/input_sprint run schedule function map:menu/credits_back 1t
execute if score #horizontal_counter menu matches 0 as @a[tag=player] if predicate map:player/input_jump run schedule function map:menu/credits_discord 1t
execute if score #horizontal_counter menu matches 1 as @a[tag=player] if predicate map:player/input_jump run schedule function map:menu/credits_telegram 1t
execute if score #horizontal_counter menu matches 2 as @a[tag=player] if predicate map:player/input_jump run schedule function map:menu/credits_boosty 1t

# Лимит по пролистыванию
execute if score #horizontal_counter menu matches ..-1 run scoreboard players set #horizontal_counter menu 2
execute if score #horizontal_counter menu matches 3.. run scoreboard players set #horizontal_counter menu 0

execute if score #horizontal_counter_prev menu = #horizontal_counter menu run return 0
execute unless score #horizontal_counter_prev menu = #horizontal_counter menu as @a at @s run playsound block.note_block.basedrum master @s ~ ~ ~ 0.7 1
execute unless score #horizontal_counter_prev menu = #horizontal_counter menu run scoreboard players operation #horizontal_counter_prev menu = #horizontal_counter menu

## Листание настроек
# Выбран Дискорд
execute if score #horizontal_counter menu matches 0 as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/credits_discord_selected/play
execute if score #horizontal_counter menu matches 0 as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/credits_telegram_selected/stop
execute if score #horizontal_counter menu matches 0 as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/credits_boosty_selected/stop
execute if score #horizontal_counter menu matches 0 as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/back_selected/stop
# Выбран Телеграм
execute if score #horizontal_counter menu matches 1 as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/credits_telegram_selected/play
execute if score #horizontal_counter menu matches 1 as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/credits_discord_selected/stop
execute if score #horizontal_counter menu matches 1 as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/credits_boosty_selected/stop
execute if score #horizontal_counter menu matches 1 as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/back_selected/stop
# Выбран Бусти
execute if score #horizontal_counter menu matches 2 as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/credits_boosty_selected/play
execute if score #horizontal_counter menu matches 2 as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/credits_telegram_selected/stop
execute if score #horizontal_counter menu matches 2 as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/credits_discord_selected/stop
execute if score #horizontal_counter menu matches 2 as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/back_selected/stop