# Переключает
execute as @a[tag=player,limit=1] run trigger markiplier

# Звук
execute as @a at @s run playsound map.random.markiplier master @s ~ ~ ~ 0.5 1

# Звук (уже нажатия)
execute as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 0.7 1

# Анимация нажатия
execute as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/settings_mark_pressed/play