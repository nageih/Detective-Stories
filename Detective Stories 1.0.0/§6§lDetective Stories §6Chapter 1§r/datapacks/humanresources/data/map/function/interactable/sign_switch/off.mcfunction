# Звук переключателя
execute at @e[tag=interactable.switch_cafe_sign,type=item_display,limit=1] run playsound map.random.switch master @a ~ ~ ~ 1 1

# Переключатель выключается (заменяется модель)
execute as @e[tag=interactable.switch_cafe_sign,type=item_display,limit=1] run item replace entity @s container.0 with yellow_dye[custom_model_data={floats:[23]}]

# Вывеска тускнеет вместе с вставкой cafe
data remove entity @e[type=item_display,tag=visual.cafe_sign,limit=1,sort=nearest] brightness
execute as @e[tag=aj.cafe_signboard.root] run function animated_java:cafe_signboard/variants/not_glowing/apply

# Убирается свет у вывески
fill -133 57 -76 -145 62 -76 light[level=0]