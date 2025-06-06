# Добавляет число в скорборд
scoreboard players add *digit1 status 1
execute if score *digit1 status matches 10.. run scoreboard players set *digit1 status 0

# Звук
execute at @e[tag=aj.pantry_door.text_display.digit1,limit=1] run playsound block.iron_trapdoor.open master @a ~ ~ ~ 1 2

# Обновление числа на замке
execute if score *digit1 status matches 1 run data merge entity @e[tag=aj.pantry_door.text_display.digit1,limit=1] {text:'"1"'}
execute if score *digit1 status matches 2 run data merge entity @e[tag=aj.pantry_door.text_display.digit1,limit=1] {text:'"2"'}
execute if score *digit1 status matches 3 run data merge entity @e[tag=aj.pantry_door.text_display.digit1,limit=1] {text:'"3"'}
execute if score *digit1 status matches 4 run data merge entity @e[tag=aj.pantry_door.text_display.digit1,limit=1] {text:'"4"'}
execute if score *digit1 status matches 5 run data merge entity @e[tag=aj.pantry_door.text_display.digit1,limit=1] {text:'"5"'}
execute if score *digit1 status matches 6 run data merge entity @e[tag=aj.pantry_door.text_display.digit1,limit=1] {text:'"6"'}
execute if score *digit1 status matches 7 run data merge entity @e[tag=aj.pantry_door.text_display.digit1,limit=1] {text:'"7"'}
execute if score *digit1 status matches 8 run data merge entity @e[tag=aj.pantry_door.text_display.digit1,limit=1] {text:'"8"'}
execute if score *digit1 status matches 9 run data merge entity @e[tag=aj.pantry_door.text_display.digit1,limit=1] {text:'"9"'}
execute if score *digit1 status matches 0 run data merge entity @e[tag=aj.pantry_door.text_display.digit1,limit=1] {text:'"0"'}

# Забирает ачивку
advancement revoke @a only map:interactable/code_1