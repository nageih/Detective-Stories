# Данные для замены
#tag=kdpaper ids/kdpaper

# Телепоротация бумаги обратно
function map:interactable/paper/ids/back_tp {id:kdpaper}

# Бумажка в лежачем положении
data merge entity @e[tag=kdpaper,tag=interactable.prop.paper,type=item_display,limit=1] {transformation:{left_rotation:[90f,0.0f,0.0f,-90.0f]},start_interpolation:0,Rotation:[174.3f,0.0f]}
data merge entity @e[tag=kdpaper,tag=interactable.prop.paper,type=item_display,limit=1] {billboard:"fixed"}

# Бумага больше не светится
data remove entity @e[tag=kdpaper,tag=interactable.prop.paper,type=item_display,limit=1] brightness
effect clear @a darkness
effect clear @a mining_fatigue

# Теперь вновь нечитаемый (минималистичная моделька)
item replace entity @e[tag=kdpaper,tag=interactable.prop.paper,type=item_display,limit=1] container.0 with yellow_dye[custom_model_data={floats:[1014f]}]

# Убирает рамки сверху и снизу
function map:ui/cb/stop

# Убирает проверку "рядом ли игрок"
schedule clear map:interactable/paper/ids/kdpaper/player_check