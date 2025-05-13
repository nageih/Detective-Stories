# Убирает статус кд
tag @e[type=marker,tag=cl_right_up.trigger] remove cooldown
data merge entity @e[tag=interactable.interact.cl_right_up,type=interaction,limit=1] {response:1b}