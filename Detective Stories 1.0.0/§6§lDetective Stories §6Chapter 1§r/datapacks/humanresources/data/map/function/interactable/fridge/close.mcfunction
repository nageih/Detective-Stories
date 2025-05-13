# Звук двери
playsound map.interaction.fridge.close master @a -129.1 53 -92.0 1 1

# Анимация открытия двери
execute as @e[tag=aj.fridge.root] run function animated_java:fridge/animations/close/play

# Телепорт интеракции
tp a423a2b0-48eb-486f-8ba5-7b3efd3bac5d -128.925 52.15 -92.1875

# Меняет состояние
tag @e[type=marker,tag=fridge.trigger] add fridge.state.closed
tag @e[type=marker,tag=fridge.trigger] remove fridge.state.opened