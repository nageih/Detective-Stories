# Звук двери
execute at @e[tag=interactable.interact.cl_left_down] run playsound map.interaction.drawer.open master @a ~ ~ ~ 1 1

# Анимация открытия двери
execute as @e[tag=aj.cafe_locker.root] run function animated_java:cafe_locker/animations/door_left_open/play

# Интеракшн ключа становится большим (если ключ не был подобран)
execute unless entity @e[tag=0kitchen_door_key,type=interaction,limit=1,tag=picked] run data merge entity @e[tag=0kitchen_door_key,type=interaction,limit=1] {width:0.8f}

# Телепортация интеракции
tp @e[tag=interactable.interact.cl_left_down,type=interaction,limit=1] -140.625 52.125 -82.6875

# Меняет состояние
tag @e[type=marker,tag=cl_left_down.trigger] remove cl_left_down.state.closed
tag @e[type=marker,tag=cl_left_down.trigger] add cl_left_down.state.opened