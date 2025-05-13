# Данные для замены
#tag=missing_person ids/missing_person

# Телепоротация бумаги обратно
function map:interactable/paper/ids/back_tp {id:missing_person}

# Бумажка в лежачем (на самом деле висит) положении
data merge entity @e[tag=missing_person,tag=interactable.prop.paper,type=item_display,limit=1] {transformation:{left_rotation:[0f,0.0f,0.0f,-0.01f]},start_interpolation:0,Rotation:[0f,0.0f]}
data merge entity @e[tag=missing_person,tag=interactable.prop.paper,type=item_display,limit=1] {billboard:"fixed"}

# Бумага больше не светится
data remove entity @e[tag=missing_person,tag=interactable.prop.paper,type=item_display,limit=1] brightness
effect clear @a darkness
effect clear @a mining_fatigue

# Теперь вновь нечитаемый (минималистичная моделька)
item replace entity @e[tag=missing_person,tag=interactable.prop.paper,type=item_display,limit=1] container.0 with yellow_dye[custom_model_data={floats:[1006f]}]

# Убирает рамки сверху и снизу
function map:ui/cb/stop

# Убирает проверку "рядом ли игрок"
schedule clear map:interactable/paper/ids/missing_person/player_check