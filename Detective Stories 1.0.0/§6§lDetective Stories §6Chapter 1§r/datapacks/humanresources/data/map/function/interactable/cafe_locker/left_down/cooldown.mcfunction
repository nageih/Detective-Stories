# Убирает статус кд
tag @e[type=marker,tag=cl_left_down.trigger] remove cooldown
data merge entity @e[tag=interactable.interact.cl_left_down,type=interaction,limit=1] {response:1b}