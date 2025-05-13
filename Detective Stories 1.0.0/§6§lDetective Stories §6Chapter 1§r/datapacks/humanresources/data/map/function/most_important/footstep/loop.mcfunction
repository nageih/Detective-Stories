# Исполняет относительно новых дисплеев таймер на 8 секунд
execute as @e[tag=footstep,type=text_display] run scoreboard players add @s status 1
execute as @e[tag=footstep,type=text_display] at @s if score @s status matches 100 run data merge entity @s {transformation:{scale:[0.0f,0.0f,0.0f]},start_interpolation:0,interpolation_duration:60}
execute as @e[tag=footstep,type=text_display] at @s if score @s status matches 160 run kill @s


# Спавнит (короче что-то спавнит)
execute as @a at @s unless entity @e[tag=footstep,type=text_display,distance=..2] if block ~ ~-1 ~ snow_block run function map:most_important/footstep/spawn
execute as @a at @s unless entity @e[tag=footstep,type=text_display,distance=..2] if block ~ ~ ~ snow run function map:most_important/footstep/spawn
execute as @a at @s as @e[tag=footstep,tag=distance_check,distance=..2,type=text_display] at @s unless entity @a[distance=..1.555] as @a at @s run function map:most_important/footstep/spawn

schedule function map:most_important/footstep/loop 1t