title @a times 10 0 10

# Рандом на 7 бросков
execute store result score #menu_rofl random run random value 1..7

# Проверка какое число
execute if score #menu_rofl random matches 1 run title @a title {"text":"\uB002"}
execute if score #menu_rofl random matches 2 run title @a title {"text":"\uB004"}
execute if score #menu_rofl random matches 3 run title @a title {"text":"\uB005"}
execute if score #menu_rofl random matches 4 run title @a title {"text":"\uB006"}
execute if score #menu_rofl random matches 5 run title @a title {"text":"\uB009"}
execute if score #menu_rofl random matches 6 run title @a title {"text":"🗣🔥🔥💯"}
execute if score #menu_rofl random matches 7 run title @a title {"text":"\uB011"}
execute if score #menu_rofl random matches 7 as @a at @s run playsound entity.lightning_bolt.thunder master @s ~ ~ ~ 1 1
execute if score #menu_rofl random matches 7 as @a at @s run playsound entity.lightning_bolt.thunder master @s ~ ~ ~ 1 1
execute if score #menu_rofl random matches 7 as @a at @s run playsound entity.lightning_bolt.thunder master @s ~ ~ ~ 1 1
execute if score #menu_rofl random matches 7 as @a at @s run playsound entity.lightning_bolt.thunder master @s ~ ~ ~ 1 1