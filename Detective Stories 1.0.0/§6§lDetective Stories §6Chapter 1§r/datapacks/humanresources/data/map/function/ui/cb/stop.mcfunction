# Конец, убирает игроку в голове - неснимаемую тыкву
execute if score #cb timer matches 1 run item replace entity @a armor.head with air
execute if score #cb timer matches 1 run title @a times 0 5 3

# Убирает start если он проигрывается
execute if score #cb timer matches 1 run schedule clear map:ui/cb/start

# Вылазят рамки сверху и снизу с интерполяцией
execute if score #cb timer matches 1 run title @a title {"text":"6","font":"frame"}
execute if score #cb timer matches 3 run title @a title {"text":"5","font":"frame"}
execute if score #cb timer matches 5 run title @a title {"text":"4","font":"frame"}
execute if score #cb timer matches 8 run title @a title {"text":"3","font":"frame"}
execute if score #cb timer matches 12 run title @a title {"text":"2","font":"frame"}
execute if score #cb timer matches 16 run title @a title {"text":"1","font":"frame"}
execute if score #cb timer matches 20 run title @a title {"text":"0","font":"frame"}

# Функция
scoreboard players add #cb timer 1
execute if score #cb timer matches 21 run scoreboard players set #cb timer 0
execute if score #cb timer matches 1..20 run schedule function map:ui/cb/stop 1t