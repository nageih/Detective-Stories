# Данные для замены
#tag=kdpaper ids/kdpaper

# Телепортирует бумажку
function map:interactable/paper/ids/teleport {id:kdpaper}

# !=Бумажка в лежачем положении
data merge entity @e[tag=kdpaper,tag=interactable.prop.paper,type=item_display,limit=1] {transformation:{left_rotation:[0f,0.0f,0.0f,-0.01f]},start_interpolation:0}
data merge entity @e[tag=kdpaper,tag=interactable.prop.paper,type=item_display,limit=1] {billboard:"center"}

# Бумага светится
data merge entity @e[tag=kdpaper,tag=interactable.prop.paper,type=item_display,limit=1] {brightness:{sky:15,block:15}}
effect give @a minecraft:darkness infinite 10 true
effect give @a mining_fatigue infinite 255 true

# Теперь текст читаемый (модель заменяется)
execute if entity @a[tag=language.russian] run item replace entity @e[tag=kdpaper,tag=interactable.prop.paper,type=item_display,limit=1] container.0 with yellow_dye[custom_model_data={floats:[1015f]}]
execute if entity @a[tag=language.english] run item replace entity @e[tag=kdpaper,tag=interactable.prop.paper,type=item_display,limit=1] container.0 with yellow_dye[custom_model_data={floats:[1016f]}]
execute if entity @a[tag=language.spanish] run item replace entity @e[tag=kdpaper,tag=interactable.prop.paper,type=item_display,limit=1] container.0 with yellow_dye[custom_model_data={floats:[1017f]}]

# Добавляет рамки сверху и снизу
function map:ui/cb/start

# Проверка рядом ли игрок
function map:interactable/paper/ids/kdpaper/player_check