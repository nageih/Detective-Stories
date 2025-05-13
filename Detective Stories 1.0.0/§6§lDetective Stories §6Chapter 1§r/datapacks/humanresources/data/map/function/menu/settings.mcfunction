# Анимация нажатия кнопки
execute as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/main_settings_pressed/play
# Появляется кнопка back
execute as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/back_appear/play
# Анимация появления глав
execute as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/settings_appear/play
# Звук нажатия
execute as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 0.7 1
# Сброс значений
scoreboard players set #horizontal_counter menu 0
scoreboard players set #horizontal_counter_prev menu 0
# Ставится состояние "выбора главы"
scoreboard players set #menu_state menu 2