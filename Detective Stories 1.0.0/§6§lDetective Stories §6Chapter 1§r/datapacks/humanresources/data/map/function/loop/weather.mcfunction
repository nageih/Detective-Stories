schedule function map:loop/weather 59s

execute if entity @a[tag=!inside] as @a at @s run playsound map.ambient.windy master @s ~ ~ ~ 0.125 1
execute if entity @a[tag=inside] as @a at @s run playsound map.ambient.windy_inside master @s ~ ~ ~ 0.125 1