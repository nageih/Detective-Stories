# Звук двери
playsound map.interaction.kitchen_door.close master @a -129.70 52.0 -84.4 1 1

# Убирает хитбокс
fill -130 53 -85 -130 52 -85 iron_trapdoor[facing=north,half=bottom,open=true]

# Анимация открытия двери
execute as @e[tag=aj.kitchen_door.root] run function animated_java:kitchen_door/animations/close/play

# Меняет состояние
tag @e[type=marker,tag=kd.trigger] add kd.state.closed
tag @e[type=marker,tag=kd.trigger] remove kd.state.opened