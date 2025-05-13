# Звук двери
playsound map.interaction.street_door.open master @a -137 52 -89 0.5 1.25

# Убирает хитбокс
fill -137 52 -89 -137 53 -89 iron_trapdoor[half=bottom,facing=north,open=true]

# Анимация открытия двери
execute as @e[tag=aj.pantry_door.root] run function animated_java:pantry_door/animations/open/play

# Меняет состояние
tag @e[type=marker,tag=pd.trigger] remove pd.state.closed
tag @e[type=marker,tag=pd.trigger] add pd.state.opened