# Телепортирует бумажку
function map:interactable/paper/ids/teleport {id:1}

# !=Бумажка в лежачем положении
data merge entity @e[tag=1,tag=interactable.prop.paper,type=item_display,limit=1] {transformation:{left_rotation:[0f,0.0f,0.0f,-0.01f]},start_interpolation:0}
data merge entity @e[tag=1,tag=interactable.prop.paper,type=item_display,limit=1] {billboard:"center"}

# Бумага светится
data merge entity @e[tag=1,tag=interactable.prop.paper,type=item_display,limit=1] {brightness:{sky:15,block:15}}
effect give @a minecraft:darkness infinite 10 true
effect give @a mining_fatigue infinite 255 true

# Теперь текст читаемый (модель заменяется)
item replace entity @e[tag=1,tag=interactable.prop.paper,type=item_display,limit=1] container.0 with yellow_dye[custom_model_data={floats:[1001]}]

# Добавляет рамки сверху и снизу
function map:ui/cb/start

# Проверка рядом ли игрок
function map:interactable/paper/ids/1/player_check