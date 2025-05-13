# Звук двери
playsound map.interaction.kitchen_door.open master @a -129.70 52.0 -84.4 1 1

# Убирает хитбокс
fill -130 53 -85 -130 52 -85 air

# Анимация открытия двери
execute as @e[tag=aj.kitchen_door.root] run function animated_java:kitchen_door/animations/open/play

# Меняет состояние
tag @e[type=marker,tag=kd.trigger] remove kd.state.closed
tag @e[type=marker,tag=kd.trigger] add kd.state.opened