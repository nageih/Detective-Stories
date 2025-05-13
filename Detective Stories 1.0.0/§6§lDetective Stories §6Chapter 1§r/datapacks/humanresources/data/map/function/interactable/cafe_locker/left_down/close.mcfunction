# Звук двери
execute at @e[tag=interactable.interact.cl_left_down] run playsound map.interaction.drawer.close master @a ~ ~ ~ 1 1

# Анимация открытия двери
execute as @e[tag=aj.cafe_locker.root] run function animated_java:cafe_locker/animations/door_left_close/play

# Уменьшает интеракшн
data merge entity @e[tag=0kitchen_door_key,type=interaction,limit=1] {width:0.0f}

# Телепортация интеракции
tp @e[tag=interactable.interact.cl_left_down,type=interaction,limit=1] -139.9375 52.125 -83.1875

# Меняет состояние
tag @e[type=marker,tag=cl_left_down.trigger] add cl_left_down.state.closed
tag @e[type=marker,tag=cl_left_down.trigger] remove cl_left_down.state.opened