# Отжимается кнопка выбора главы
execute as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/main_chapter/play
# Пропадает кнопка back
execute as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/back_pressed/play
# Анимация пропадания глав
execute as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/chapter_disappear/play
# Звук нажатия
execute as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 0.7 1
# Сброс значений
scoreboard players set #vertical_counter menu 1
scoreboard players set #vertical_counter_prev menu 1
# Обратно в главное меню
scoreboard players set #menu_state menu 0