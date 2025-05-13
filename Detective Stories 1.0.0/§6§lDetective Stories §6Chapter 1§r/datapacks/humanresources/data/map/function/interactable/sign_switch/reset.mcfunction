# Ресет ачивки
advancement revoke @a only map:interactable/switch_cafe_sign

scoreboard players set #interactable.switch_sign status 0

# Переключатель включается (заменяется модель)
execute as @e[tag=interactable.switch_cafe_sign,type=item_display,limit=1] run item replace entity @s container.0 with yellow_dye[custom_model_data={floats:[24]}]

# Вывеска светлеет вместе с вставкой cafe
data merge entity @e[type=item_display,tag=visual.cafe_sign,limit=1,sort=nearest] {brightness:{block:14,sky:14}}
execute as @e[tag=aj.cafe_signboard.root] run function animated_java:cafe_signboard/variants/glowing/apply

# Ресет "ачивки" (чтобы вновь можно было поломать вывеску)
scoreboard players reset #cafe_sign_advancement status

# Свет у вывески
fill -133 57 -76 -145 62 -76 light[level=12]