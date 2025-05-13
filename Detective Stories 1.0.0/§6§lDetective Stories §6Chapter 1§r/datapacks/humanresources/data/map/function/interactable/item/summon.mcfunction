# Спавн маркера
$summon marker ~ ~ ~ {Tags:["$(name)","$(side)","$(htp)"],Invulnerable:1b,CustomName:'"$(name)"'}
# Спавн основного интеракшна
$summon interaction ~ ~ ~ {Tags:["$(name)","interactable.interact.item","$(side)","$(htp)","interactable"],height:$(height),width:$(width)}
# Спавн модельки с начальной моделью
$summon item_display ~ ~ ~ {item:{id:"minecraft:yellow_dye",count:1b,components:{custom_model_data:{floats:[$(back_model)]}}},Tags:["$(name)","interactable.prop.item","$(side)","interactable"],start_interpolation:0,teleport_duration:5,interpolation_duration:5,transformation:{left_rotation:[90f,0.0f,0.0f,-90.0f]}}
# Спавн текста
$summon text_display ~ ~ ~ {Tags:["$(name)","interactable.text.item"],background:0,alignment:"left",shadow:1b,brightness:{sky:0,block:15},default_background:0b,transformation:{scale:[0.375f,0.375f,0.375f]},billboard:"center",teleport_duration:5,interpolation_duration:5,see_through:1b}
#$data merge entity @e[type=item_display,distance=..1,limit=1,tag=$(name),tag=interactable.prop.item] {transformation:{left_rotation:[90f,0.0f,0.0f,-90.0f]}}
$ride @e[tag=$(name),type=interaction,limit=1] mount @e[tag=$(name),type=item_display,limit=1]
# Разворачивает модельки
$tag @s add $(side)
$tag @s add $(nah)
$execute if entity @s[tag=nah] run tag @e[tag=$(name),type=interaction,distance=..2] add nah
$execute unless entity @s[tag=nah] run tag @s remove $(nah)
$execute if entity @s[tag=e] as @e[tag=$(name),distance=..2] at @s run data merge entity @s {Rotation:[-90f,0.0f]}
$execute if entity @s[tag=n] as @e[tag=$(name),distance=..2] at @s run data merge entity @s {Rotation:[180f,0.0f]}
$execute if entity @s[tag=s] as @e[tag=$(name),distance=..2] at @s run data merge entity @s {Rotation:[0.0f,0.0f]}
$execute if entity @s[tag=w] as @e[tag=$(name),distance=..2] at @s run data merge entity @s {Rotation:[90f,0.0f]}
tag @s remove nah
$tag @s remove $(side)

#Шаблон для текста
#{"text":"","extra": [{"text":"ДЕБАГ","font":"minecraft:minecraft_five","bold": true,"color":"yellow","shadow_color": 0},"\n\nСтранный предмет. Вероятно, оставлено разработчиком.",{"text":"\n\n","color":"gray"},{"text":"ꀐ","color":"gray","shadow_color": 0},{"text":" Положить | ","color":"gray"},{"text":"ꀑ","color":"gray","shadow_color": 0},{"text":" Взять","color":"gray"}]}