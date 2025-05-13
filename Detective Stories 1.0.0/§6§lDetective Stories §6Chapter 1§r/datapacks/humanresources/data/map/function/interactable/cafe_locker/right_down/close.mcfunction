# Звук двери
execute at @e[tag=interactable.interact.cl_right_down] run playsound map.interaction.drawer.close master @a ~ ~ ~ 1 1

# Анимация открытия двери
execute as @e[tag=aj.cafe_locker.root] run function animated_java:cafe_locker/animations/door_right_close/play

# Телепортация интеракции
tp @e[tag=interactable.interact.cl_right_down,type=interaction,limit=1] -139.0625 52.125 -83.1875

# Меняет состояние
tag @e[type=marker,tag=cl_right_down.trigger] add cl_right_down.state.closed
tag @e[type=marker,tag=cl_right_down.trigger] remove cl_right_down.state.opened