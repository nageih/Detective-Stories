# Звук двери
execute at @e[tag=interactable.interact.cl_left_up] run playsound map.interaction.drawer.open master @a ~ ~ ~ 1 1

# Анимация открытия двери
execute as @e[tag=aj.cafe_locker.root] run function animated_java:cafe_locker/animations/shelf_left_open/play

# Меняет состояние
tag @e[type=marker,tag=cl_left_up.trigger] remove cl_left_up.state.closed
tag @e[type=marker,tag=cl_left_up.trigger] add cl_left_up.state.opened