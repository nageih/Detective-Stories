# Убирает статус кд
tag @e[type=marker,tag=cl_right_down.trigger] remove cooldown
data merge entity @e[tag=interactable.interact.cl_right_down,type=interaction,limit=1] {response:1b}