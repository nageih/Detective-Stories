# Данные для замены
#tag=street_paper ids/street_paper

# Телепортирует бумажку
function map:interactable/paper/ids/teleport {id:street_paper}

# !=Бумажка в лежачем положении
data merge entity @e[tag=street_paper,tag=interactable.prop.paper,type=item_display,limit=1] {transformation:{left_rotation:[0f,0.0f,0.0f,-0.01f]},start_interpolation:0,Rotation:[0f,0.0f]}
data merge entity @e[tag=street_paper,tag=interactable.prop.paper,type=item_display,limit=1] {billboard:"center"}

# Бумага светится
data merge entity @e[tag=street_paper,tag=interactable.prop.paper,type=item_display,limit=1] {brightness:{sky:15,block:15}}
effect give @a minecraft:darkness infinite 10 true
effect give @a mining_fatigue infinite 255 true
data remove entity @e[tag=street_paper,tag=interactable.prop.paper,type=item_display,limit=1] Glowing

# Теперь текст читаемый (модель заменяется)
execute if entity @a[tag=language.russian] run item replace entity @e[tag=street_paper,tag=interactable.prop.paper,type=item_display,limit=1] container.0 with yellow_dye[custom_model_data={floats:[1011f]}]
execute if entity @a[tag=language.english] run item replace entity @e[tag=street_paper,tag=interactable.prop.paper,type=item_display,limit=1] container.0 with yellow_dye[custom_model_data={floats:[1022f]}]
execute if entity @a[tag=language.spanish] run item replace entity @e[tag=street_paper,tag=interactable.prop.paper,type=item_display,limit=1] container.0 with yellow_dye[custom_model_data={floats:[1023f]}]
execute if entity @a[tag=language.chinese] run item replace entity @e[tag=street_paper,tag=interactable.prop.paper,type=item_display,limit=1] container.0 with yellow_dye[custom_model_data={floats:[1030f]}]

# Добавляет рамки сверху и снизу
function map:ui/cb/start

# Проверка рядом ли игрок
function map:interactable/paper/ids/street_paper/player_check