# Данные для замены
#tag=2 ids/2

# Телепоротация бумаги обратно
function map:interactable/paper/ids/back_tp {id:2}

# Бумажка в лежачем положении
data merge entity @e[tag=2,tag=interactable.prop.paper,type=item_display,limit=1] {transformation:{left_rotation:[90f,0.0f,0.0f,-90.0f]},start_interpolation:0,Rotation:[-5.7f,0.0f]}
data merge entity @e[tag=2,tag=interactable.prop.paper,type=item_display,limit=1] {billboard:"fixed"}

# Бумага больше не светится
data remove entity @e[tag=2,tag=interactable.prop.paper,type=item_display,limit=1] brightness
effect clear @a darkness
effect clear @a mining_fatigue

# Теперь вновь нечитаемый (минималистичная моделька)
item replace entity @e[tag=2,tag=interactable.prop.paper,type=item_display,limit=1] container.0 with yellow_dye[custom_model_data={floats:[1002]}]

# Убирает рамки сверху и снизу
function map:ui/cb/stop

# Убирает проверку "рядом ли игрок"
schedule clear map:interactable/paper/ids/2/player_check