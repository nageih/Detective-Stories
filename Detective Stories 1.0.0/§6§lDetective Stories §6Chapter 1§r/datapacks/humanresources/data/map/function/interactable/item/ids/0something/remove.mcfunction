# Данные для замены
#tag=0something ids/0something

tag @s remove used

# Телепоротация предмета обратно
execute as @e[tag=0something,type=marker] run function map:interactable/item/ids/back_tp {name:"0something"}

# Предмет в лежачем положении
data merge entity @e[tag=0something,tag=interactable.prop.item,type=item_display,limit=1] {transformation:{left_rotation:[0f,0.0f,0.0f,-0.01f]},start_interpolation:0,Rotation:[12.7f,0.0f]}
data merge entity @e[tag=0something,tag=interactable.prop.item,type=item_display,limit=1] {billboard:"fixed"}

# Предмет больше не светится
data remove entity @e[tag=0something,tag=interactable.prop.item,type=item_display,limit=1] brightness
effect clear @a darkness
effect clear @a mining_fatigue

# Заменяет предмет обратно
#item replace entity @e[tag=0something,tag=interactable.prop.item,type=item_display,limit=1] container.0 with yellow_dye[custom_model_data=1000]

# Убирает рамки сверху и снизу
function map:ui/cb/stop

# Убирает проверку "рядом ли игрок"
schedule clear map:interactable/item/ids/0something/player_check