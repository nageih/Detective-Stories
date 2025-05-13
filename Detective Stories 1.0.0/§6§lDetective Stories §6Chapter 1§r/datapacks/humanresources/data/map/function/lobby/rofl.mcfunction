# Старт функции

# Функция
scoreboard players add #rofl timer 1
execute if score #rofl timer matches 6 run advancement revoke @a only map:rofl
execute if score #rofl timer matches 6 run scoreboard players set #rofl timer 0
execute if score #rofl timer matches 1..5 run schedule function map:lobby/rofl 1t