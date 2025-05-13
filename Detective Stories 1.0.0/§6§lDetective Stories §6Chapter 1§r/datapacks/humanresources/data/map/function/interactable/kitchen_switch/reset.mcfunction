# Ресет ачивки
advancement revoke @a only map:interactable/switch_kitchen

scoreboard players set #interactable.switch_kitchen status 0

# Переключатель включается (заменяется модель)
execute as @e[tag=interactable.switch_kitchen,type=item_display,limit=1] run item replace entity @s container.0 with yellow_dye[custom_model_data={floats:[24]}]

# Свет на кухне возвращается
execute as @e[tag=cafe.kitchen_light,type=item_display,limit=1] run item replace entity @s container.0 with yellow_dye[custom_model_data={floats:[27]}]

# "блум" возвращается (не в кино)
execute as @e[tag=kitchen.light.bloom,type=item_display,limit=1] at @s run item replace entity @s container.0 with yellow_dye[custom_model_data={floats:[33f]}]

# Ставится свет на кухне
setblock -133 55 -90 light[level=15]