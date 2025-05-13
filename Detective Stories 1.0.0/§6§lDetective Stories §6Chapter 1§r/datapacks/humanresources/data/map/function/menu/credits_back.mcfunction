# Отжимается кнопка автора
execute as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/main_credits/play
# Пропадает кнопка back
execute as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/back_pressed/play
# Анимация пропадания автора
execute as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/credits_disappear/play
# Все анимации внутри прекращаются
execute as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/credits_boosty_selected/stop
execute as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/credits_telegram_selected/stop
execute as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/credits_discord_selected/stop
# Звук нажатия
execute as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 0.7 1
# Сброс значений
scoreboard players set #vertical_counter menu 3
scoreboard players set #vertical_counter_prev menu 3
# Обратно в главное меню
scoreboard players set #menu_state menu 0