# Спавн интеракшна
$summon interaction ~ ~ ~ {Tags:["$(digit)","interactable.interact.paper","$(side)","$(htp)","interactable"],height:$(height),width:$(width)}
# Спавн модельки с начальной моделью
$summon item_display ~ ~ ~ {item:{id:"minecraft:yellow_dye",count:1b,components:{custom_model_data:{floats:[$(back_model)]}}},Tags:["$(digit)","interactable.prop.paper","$(side)","interactable"],start_interpolation:0,teleport_duration:5,interpolation_duration:5,transformation:{left_rotation:[90f,0.0f,0.0f,-90.0f]}}
$data merge entity @e[type=item_display,distance=..1,limit=1,tag=$(digit),tag=interactable.prop.paper] {transformation:{left_rotation:[90f,0.0f,0.0f,-90.0f]}}
# Разворачивает модельки
$tag @s add $(side)
$execute if entity @s[tag=e] as @e[tag=$(digit),distance=..2] at @s run data merge entity @s {Rotation:[-90f,0.0f]}
$execute if entity @s[tag=n] as @e[tag=$(digit),distance=..2] at @s run data merge entity @s {Rotation:[180f,0.0f]}
$execute if entity @s[tag=s] as @e[tag=$(digit),distance=..2] at @s run data merge entity @s {Rotation:[0.0f,0.0f]}
$execute if entity @s[tag=w] as @e[tag=$(digit),distance=..2] at @s run data merge entity @s {Rotation:[90f,0.0f]}
$tag @s remove $(side)