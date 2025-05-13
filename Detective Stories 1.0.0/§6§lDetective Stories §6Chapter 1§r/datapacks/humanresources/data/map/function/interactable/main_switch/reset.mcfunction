# Ресет ачивки
advancement revoke @a only map:interactable/switch_main

scoreboard players set #interactable.switch_main status 0

# Переключатель включается (заменяется модель)
execute as @e[tag=interactable.switch_main,type=item_display,limit=1] run item replace entity @s container.0 with yellow_dye[custom_model_data={floats:[24]}]

# Модели всех ламп заменяются
execute as @e[tag=cafe.mainlight,type=item_display,limit=8] at @s run item replace entity @s container.0 with yellow_dye[custom_model_data={floats:[27]}]

# "блум" возвращается в кино
execute as @e[tag=cafe.mainlight.bloom,type=item_display,limit=8] at @s run item replace entity @s container.0 with yellow_dye[custom_model_data={floats:[33f]}]

# Появляется свет у ламп
fill -131 55 -79 -131 55 -80 light[level=15]
fill -136 55 -79 -136 55 -80 light[level=15]
fill -142 55 -79 -142 55 -80 light[level=15]
fill -146 55 -79 -146 55 -80 light[level=15]
setblock -147 55 -83 light[level=15]
setblock -142 55 -83 light[level=15]
setblock -136 55 -83 light[level=15]
setblock -132 55 -83 light[level=15]