
# Звук переключателя
execute at @e[tag=interactable.switch_cafe_sign,type=item_display,limit=1] run playsound map.random.switch master @a ~ ~ ~ 1 1

# Переключатель включается (заменяется модель)
execute as @e[tag=interactable.switch_cafe_sign,type=item_display,limit=1] run item replace entity @s container.0 with yellow_dye[custom_model_data={floats:[24]}]

# Достижение, чтобы вывеска сломалась
scoreboard players add #cafe_sign_advancement status 1
execute if score #cafe_sign_advancement status matches 5 run advancement grant @a only map:advancements/way_to_go
execute if score #cafe_sign_advancement status matches 5 run playsound map.interaction.electricity_break master @a -138.0 60.75 -74.5 1.5 1
execute if score #cafe_sign_advancement status matches 5.. run return 0

# Вывеска светлеет вместе с вставкой cafe
data merge entity @e[type=item_display,tag=visual.cafe_sign,limit=1,sort=nearest] {brightness:{block:14,sky:14}}
execute as @e[tag=aj.cafe_signboard.root] run function animated_java:cafe_signboard/variants/glowing/apply

# Убирается свет у вывески
fill -133 57 -76 -145 62 -76 light[level=12]