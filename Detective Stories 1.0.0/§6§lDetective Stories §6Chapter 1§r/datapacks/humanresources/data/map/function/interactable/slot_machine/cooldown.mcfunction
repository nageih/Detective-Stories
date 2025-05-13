# Убирает статус кд
tag @e[type=marker,tag=sm.trigger] remove cooldown

# Ачивка
execute if score #sm_spin random matches 5 run scoreboard players add #lucky_advancement status 1
execute if score #lucky_advancement status matches 2 run advancement grant @a only map:advancements/adv4
execute unless score #sm_spin random matches 5 run scoreboard players reset #lucky_advancement status