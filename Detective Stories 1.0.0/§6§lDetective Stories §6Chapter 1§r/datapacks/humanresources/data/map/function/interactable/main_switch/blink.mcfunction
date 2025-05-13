schedule function map:interactable/main_switch/blink 1t
scoreboard players add #light_blink timer 1
execute if score #light_blink timer matches 1 as @e[tag=cafe.mainlight,type=item_display,limit=1,sort=random] at @s run tag @s add random
execute if score #light_blink timer matches 1 as @e[tag=cafe.mainlight,tag=random,type=item_display,limit=1] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 air replace light
execute if score #light_blink timer matches 1 as @e[tag=cafe.mainlight,tag=random,type=item_display,limit=1] at @s run item replace entity @e[tag=cafe.mainlight.bloom,type=item_display,limit=1,sort=nearest] container.0 with air
execute if score #light_blink timer matches 1 as @e[tag=cafe.mainlight,tag=random,type=item_display,limit=1] at @s run item replace entity @s container.0 with yellow_dye[custom_model_data={floats:[26]}]
execute if score #light_blink timer matches 1 as @e[tag=cafe.mainlight,tag=random,type=item_display,limit=1] at @s run playsound map.random.lamp_flicker master @a ~ ~ ~ 1 1
execute if score #light_blink timer matches 1 as @e[tag=cafe.mainlight,type=item_display,limit=1,sort=random] at @s run tag @s add random
execute if score #light_blink timer matches 2 as @e[tag=cafe.mainlight,tag=random,type=item_display,limit=1] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 air replace light
execute if score #light_blink timer matches 2 as @e[tag=cafe.mainlight,tag=random,type=item_display,limit=1] at @s run item replace entity @e[tag=cafe.mainlight.bloom,type=item_display,limit=1,sort=nearest] container.0 with air
execute if score #light_blink timer matches 2 as @e[tag=cafe.mainlight,tag=random,type=item_display,limit=1] at @s run item replace entity @s container.0 with yellow_dye[custom_model_data={floats:[26]}]
execute if score #light_blink timer matches 2 as @e[tag=cafe.mainlight,tag=random,type=item_display,limit=1] at @s run playsound map.random.lamp_flicker master @a ~ ~ ~ 1 1
execute if score #light_blink timer matches 2 as @e[tag=cafe.mainlight,type=item_display,limit=1,sort=random] at @s run tag @s remove random
execute if score #light_blink timer matches 4 as @e[tag=cafe.mainlight,type=item_display,limit=1,sort=random] at @s run tag @s add random
execute if score #light_blink timer matches 4 as @e[tag=cafe.mainlight,tag=random,type=item_display,limit=1] at @s run fill ~ ~ ~ ~ ~ ~-1 air replace light
execute if score #light_blink timer matches 4 as @e[tag=cafe.mainlight,tag=random,type=item_display,limit=1] at @s run item replace entity @e[tag=cafe.mainlight.bloom,type=item_display,limit=1,sort=nearest] container.0 with air
execute if score #light_blink timer matches 4 as @e[tag=cafe.mainlight,tag=random,type=item_display,limit=1] at @s run item replace entity @s container.0 with yellow_dye[custom_model_data={floats:[26]}]
execute if score #light_blink timer matches 4 as @e[tag=cafe.mainlight,tag=random,type=item_display,limit=1] at @s run playsound map.random.lamp_flicker master @a ~ ~ ~ 1 1
execute if score #light_blink timer matches 4 as @e[tag=cafe.mainlight,type=item_display,limit=1,sort=random] at @s run tag @s remove random
execute if score #light_blink timer matches 6 as @e[tag=cafe.mainlight,type=item_display,limit=1,sort=random] at @s run tag @s add random
execute if score #light_blink timer matches 6 as @e[tag=cafe.mainlight,tag=random,type=item_display,limit=1] at @s run fill ~ ~ ~ ~ ~ ~-1 air replace light
execute if score #light_blink timer matches 6 as @e[tag=cafe.mainlight,tag=random,type=item_display,limit=1] at @s run item replace entity @e[tag=cafe.mainlight.bloom,type=item_display,limit=1,sort=nearest] container.0 with air
execute if score #light_blink timer matches 6 as @e[tag=cafe.mainlight,tag=random,type=item_display,limit=1] at @s run item replace entity @s container.0 with yellow_dye[custom_model_data={floats:[26]}]
execute if score #light_blink timer matches 6 as @e[tag=cafe.mainlight,tag=random,type=item_display,limit=1] at @s run playsound map.random.lamp_flicker master @a ~ ~ ~ 1 1
execute if score #light_blink timer matches 6 as @e[tag=cafe.mainlight,type=item_display,limit=1,sort=random] at @s run tag @s remove random
execute if score #light_blink timer matches 7 as @e[tag=cafe.mainlight,type=item_display,limit=1,sort=random] at @s run tag @s add random
execute if score #light_blink timer matches 7 as @e[tag=cafe.mainlight,tag=random,type=item_display,limit=1] at @s run fill ~ ~ ~ ~ ~ ~-1 air replace light
execute if score #light_blink timer matches 7 as @e[tag=cafe.mainlight,tag=random,type=item_display,limit=1] at @s run item replace entity @e[tag=cafe.mainlight.bloom,type=item_display,limit=1,sort=nearest] container.0 with air
execute if score #light_blink timer matches 7 as @e[tag=cafe.mainlight,tag=random,type=item_display,limit=1] at @s run item replace entity @s container.0 with yellow_dye[custom_model_data={floats:[26]}]
execute if score #light_blink timer matches 7 as @e[tag=cafe.mainlight,tag=random,type=item_display,limit=1] at @s run playsound map.random.lamp_flicker master @a ~ ~ ~ 1 1
execute if score #light_blink timer matches 7 as @e[tag=cafe.mainlight,type=item_display,limit=1,sort=random] at @s run tag @s remove random
execute if score #light_blink timer matches 10 as @e[tag=cafe.mainlight,type=item_display,limit=1,sort=random] at @s run tag @s add random
execute if score #light_blink timer matches 10 as @e[tag=cafe.mainlight,tag=random,type=item_display,limit=1] at @s run fill ~ ~ ~ ~ ~ ~-1 air replace light
execute if score #light_blink timer matches 10 as @e[tag=cafe.mainlight,tag=random,type=item_display,limit=1] at @s run item replace entity @e[tag=cafe.mainlight.bloom,type=item_display,limit=1,sort=nearest] container.0 with air
execute if score #light_blink timer matches 10 as @e[tag=cafe.mainlight,tag=random,type=item_display,limit=1] at @s run item replace entity @s container.0 with yellow_dye[custom_model_data={floats:[26]}]
execute if score #light_blink timer matches 10 as @e[tag=cafe.mainlight,tag=random,type=item_display,limit=1] at @s run playsound map.random.lamp_flicker master @a ~ ~ ~ 1 1
execute if score #light_blink timer matches 10 as @e[tag=cafe.mainlight,type=item_display,limit=1,sort=random] at @s run tag @s remove random
execute if score #light_blink timer matches 13 run fill -131 55 -79 -131 55 -80 light[level=15]
execute if score #light_blink timer matches 13 run fill -136 55 -79 -136 55 -80 light[level=15]
execute if score #light_blink timer matches 13 run fill -142 55 -79 -142 55 -80 light[level=15]
execute if score #light_blink timer matches 13 run fill -146 55 -79 -146 55 -80 light[level=15]
execute if score #light_blink timer matches 13 run setblock -147 55 -83 light[level=15]
execute if score #light_blink timer matches 13 run setblock -142 55 -83 light[level=15]
execute if score #light_blink timer matches 13 run setblock -136 55 -83 light[level=15]
execute if score #light_blink timer matches 13 run setblock -132 55 -83 light[level=15]
execute if score #light_blink timer matches 13 as @e[tag=cafe.mainlight,type=item_display,limit=8] at @s run item replace entity @s container.0 with yellow_dye[custom_model_data={floats:[27]}]
execute if score #light_blink timer matches 13 as @e[tag=cafe.mainlight.bloom,type=item_display,limit=8] at @s run item replace entity @s container.0 with yellow_dye[custom_model_data={floats:[33f]}]
execute if score #light_blink timer matches 13 run scoreboard players set #light_blink timer 0