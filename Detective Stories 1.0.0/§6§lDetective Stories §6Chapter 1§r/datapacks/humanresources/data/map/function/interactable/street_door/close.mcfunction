# Звук двери
playsound map.interaction.street_door.close master @a -147 52 -101 0.5 1

# Убирает хитбокс
fill -147 52 -101 -147 53 -101 iron_trapdoor[facing=north,half=bottom,open=true]

# Анимация открытия двери
execute as @e[tag=aj.street_door.root] run function animated_java:street_door/animations/close/play

# Меняет состояние
tag @e[type=marker,tag=sd.trigger] add sd.state.closed
tag @e[type=marker,tag=sd.trigger] remove sd.state.opened