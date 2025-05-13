# Данные для замены
#tag=0street_door_key ids/0street_door_key

tag @s remove used

# Телепоротация предмета обратно
execute as @e[tag=0street_door_key,type=marker] run function map:interactable/item/ids/back_tp {name:"0street_door_key"}

# Антирасширение территории
data merge entity 94a61e02-061f-4480-aa3e-546d5913b6b6 {width:0.5f}

# Предмет в лежачем положении
data merge entity @e[tag=0street_door_key,tag=interactable.prop.item,type=item_display,limit=1] {start_interpolation:0,transformation: {left_rotation: [0.70419663f, -0.09229596f, -0.0640869f, -0.7010575f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f]}}
data merge entity @e[tag=0street_door_key,tag=interactable.prop.item,type=item_display,limit=1] {billboard:"fixed"}

# Предмет больше не светится
data remove entity @e[tag=0street_door_key,tag=interactable.prop.item,type=item_display,limit=1] brightness
effect clear @a darkness
effect clear @a mining_fatigue

# Заменяет предмет обратно
#item replace entity @e[tag=0street_door_key,tag=interactable.prop.item,type=item_display,limit=1] container.0 with yellow_dye[custom_model_data=1000]

# Убирает рамки сверху и снизу
function map:ui/cb/stop

# Убирает проверку "рядом ли игрок"
schedule clear map:interactable/item/ids/0street_door_key/player_check