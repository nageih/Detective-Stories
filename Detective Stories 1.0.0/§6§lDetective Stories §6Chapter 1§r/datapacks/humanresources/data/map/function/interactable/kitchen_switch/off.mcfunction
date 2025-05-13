# Звук переключателя
execute at @e[tag=interactable.switch_kitchen,type=item_display,limit=1] run playsound map.random.switch master @a ~ ~ ~ 1 1

# Переключатель выключается (заменяется модель)
execute as @e[tag=interactable.switch_kitchen,type=item_display,limit=1] run item replace entity @s container.0 with yellow_dye[custom_model_data={floats:[23]}]

# Свет на кухне тускнеет
execute as @e[tag=cafe.kitchen_light,type=item_display,limit=1] run item replace entity @s container.0 with yellow_dye[custom_model_data={floats:[26]}]

# "блум" убирается
execute as @e[tag=kitchen.light.bloom,type=item_display,limit=1] at @s run item replace entity @s container.0 with air

# Убирается свет на кухне
setblock -133 55 -90 light[level=0]