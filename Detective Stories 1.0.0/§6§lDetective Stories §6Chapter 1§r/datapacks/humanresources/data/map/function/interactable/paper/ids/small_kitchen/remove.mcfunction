# Данные для замены
#tag=small_kitchen ids/small_kitchen

# Телепоротация бумаги обратно
function map:interactable/paper/ids/back_tp {id:small_kitchen}

# Бумажка в лежачем (на самом деле висит) положении
data merge entity @e[tag=small_kitchen,tag=interactable.prop.paper,type=item_display,limit=1] {transformation:{left_rotation:[0f,0.0f,0.0f,-0.01f]},start_interpolation:0,Rotation:[90f,0.0f]}
data merge entity @e[tag=small_kitchen,tag=interactable.prop.paper,type=item_display,limit=1] {billboard:"fixed"}

# Бумага больше не светится
data remove entity @e[tag=small_kitchen,tag=interactable.prop.paper,type=item_display,limit=1] brightness
effect clear @a darkness
effect clear @a mining_fatigue

# Диалог
execute unless entity @a[tag=small_kitchen_used] run function map:triggers/execute/kitchen_paper/func
execute unless entity @a[tag=small_kitchen_used] run tag @a add small_kitchen_used

# Теперь вновь нечитаемый (минималистичная моделька)
item replace entity @e[tag=small_kitchen,tag=interactable.prop.paper,type=item_display,limit=1] container.0 with yellow_dye[custom_model_data={floats:[1008f]}]

# Убирает рамки сверху и снизу
function map:ui/cb/stop

# Убирает проверку "рядом ли игрок"
schedule clear map:interactable/paper/ids/small_kitchen/player_check