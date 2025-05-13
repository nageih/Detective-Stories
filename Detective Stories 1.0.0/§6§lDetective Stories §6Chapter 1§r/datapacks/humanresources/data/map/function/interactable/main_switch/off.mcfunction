# Если происходит мигание лампочек
schedule clear map:interactable/main_switch/blink

# Звук переключателя
execute at @e[tag=interactable.switch_main,type=interaction,limit=1] run playsound map.random.switch master @a ~ ~ ~ 1 1

# Переключатель выключается (заменяется модель)
execute as @e[tag=interactable.switch_main,type=item_display,limit=1] run item replace entity @s container.0 with yellow_dye[custom_model_data={floats:[23]}]

# Модели всех ламп заменяются
execute as @e[tag=cafe.mainlight,type=item_display,limit=8] at @s run item replace entity @s container.0 with yellow_dye[custom_model_data={floats:[26]}]

# "блум" убирается
execute as @e[tag=cafe.mainlight.bloom,type=item_display,limit=8] at @s run item replace entity @s container.0 with air

# Убирается свет у ламп
fill -131 55 -79 -131 55 -80 light[level=0]
fill -136 55 -79 -136 55 -80 light[level=0]
fill -142 55 -79 -142 55 -80 light[level=0]
fill -146 55 -79 -146 55 -80 light[level=0]
setblock -147 55 -83 light[level=0]
setblock -142 55 -83 light[level=0]
setblock -136 55 -83 light[level=0]
setblock -132 55 -83 light[level=0]