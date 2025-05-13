# Данные для замены
#tag=0kitchen_door_key ids/0kitchen_door_key

tag @s add used

# Телепортирует предмет
execute as @e[tag=0kitchen_door_key,type=marker] run function map:interactable/item/ids/teleport {name:"0kitchen_door_key"}

# !=Предмет в лежачем положении
data merge entity @e[tag=0kitchen_door_key,tag=interactable.prop.item,type=item_display,limit=1] {transformation:{left_rotation:[0f,0.0f,0.0f,-0.01f]},start_interpolation:0,Rotation:[0f,0.0f]}
#data merge entity @e[tag=0kitchen_door_key,tag=interactable.prop.item,type=item_display,limit=1] {billboard:"center"}

# Предмет светится
data merge entity @e[tag=0kitchen_door_key,tag=interactable.prop.item,type=item_display,limit=1] {brightness:{sky:15,block:15}}
effect give @a minecraft:darkness infinite 10 true
effect give @a mining_fatigue infinite 255 true

# При необходимости модель заменится на чуть более детальную
#item replace entity @e[tag=0kitchen_door_key,tag=interactable.prop.item,type=item_display,limit=1] container.0 with yellow_dye[custom_model_data=1001]

# Правильный телепорт текста
tp @e[tag=0kitchen_door_key,type=text_display,distance=..3] -139.4 53.325 -82.4

# Добавляет рамки сверху и снизу
function map:ui/cb/start

# Проверка рядом ли игрок
function map:interactable/item/ids/0kitchen_door_key/player_check