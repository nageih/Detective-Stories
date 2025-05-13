# Данные для замены
#tag=0something ids/0something

tag @s add used

# Телепортирует предмет
execute as @e[tag=0something,type=marker] run function map:interactable/item/ids/teleport {name:"0something"}

# !=Предмет в лежачем положении
data merge entity @e[tag=0something,tag=interactable.prop.item,type=item_display,limit=1] {transformation:{left_rotation:[0f,0.0f,0.0f,-0.01f]},start_interpolation:0,Rotation:[0f,0.0f]}
#data merge entity @e[tag=0something,tag=interactable.prop.item,type=item_display,limit=1] {billboard:"center"}

# Предмет светится
data merge entity @e[tag=0something,tag=interactable.prop.item,type=item_display,limit=1] {brightness:{sky:15,block:15}}
effect give @a minecraft:darkness infinite 10 true
effect give @a mining_fatigue infinite 255 true

# При необходимости модель заменится на чуть более детальную
#item replace entity @e[tag=0something,tag=interactable.prop.item,type=item_display,limit=1] container.0 with yellow_dye[custom_model_data=1001]

# Добавляет рамки сверху и снизу
function map:ui/cb/start

# Проверка рядом ли игрок
function map:interactable/item/ids/0something/player_check