# Данные для замены
#tag=street_paper ids/street_paper

# Телепоротация бумаги обратно
function map:interactable/paper/ids/back_tp {id:street_paper}

# Бумажка в лежачем положении
data merge entity @e[tag=street_paper,tag=interactable.prop.paper,type=item_display,limit=1] {transformation:{left_rotation:[90f,0.0f,0.0f,-90.0f]},start_interpolation:0,Rotation:[84.3f,0.0f]}
data merge entity @e[tag=street_paper,tag=interactable.prop.paper,type=item_display,limit=1] {billboard:"fixed"}

# Бумага больше не светится
data remove entity @e[tag=street_paper,tag=interactable.prop.paper,type=item_display,limit=1] brightness
effect clear @a darkness
effect clear @a mining_fatigue

# Диалог
execute unless entity @a[tag=street_paper_used] run function map:triggers/execute/street_paper/func
execute unless entity @a[tag=street_paper_used] run tag @a add street_paper_used

# Теперь вновь нечитаемый (минималистичная моделька)
item replace entity @e[tag=street_paper,tag=interactable.prop.paper,type=item_display,limit=1] container.0 with yellow_dye[custom_model_data={floats:[1010f]}]

# Убирает рамки сверху и снизу
function map:ui/cb/stop

# Убирает проверку "рядом ли игрок"
schedule clear map:interactable/paper/ids/street_paper/player_check