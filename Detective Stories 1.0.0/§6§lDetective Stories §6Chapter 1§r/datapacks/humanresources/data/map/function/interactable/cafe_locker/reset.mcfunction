## Левая нижняя дверь

# Анимация двери
execute as @e[tag=aj.cafe_locker.root] run function animated_java:cafe_locker/animations/door_left_close/play

# Уменьшает интеракшн
data merge entity @e[tag=0kitchen_door_key,type=interaction,limit=1] {width:0.0f}

# Телепортация интеракции
tp @e[tag=interactable.interact.cl_left_down,type=interaction,limit=1] -139.9375 52.125 -83.1875

# Меняет состояние
tag @e[type=marker,tag=cl_left_down.trigger] add cl_left_down.state.closed
tag @e[type=marker,tag=cl_left_down.trigger] remove cl_left_down.state.opened
data merge entity @e[tag=interactable.interact.cl_left_down,type=interaction,limit=1] {response:1b}


## Правая нижняя дверь

# Анимация двери
execute as @e[tag=aj.cafe_locker.root] run function animated_java:cafe_locker/animations/door_right_close/play

# Телепортация интеракции
tp @e[tag=interactable.interact.cl_right_down,type=interaction,limit=1] -139.0625 52.125 -83.1875

# Меняет состояние
tag @e[type=marker,tag=cl_right_down.trigger] add cl_right_down.state.closed
tag @e[type=marker,tag=cl_right_down.trigger] remove cl_right_down.state.opened
data merge entity @e[tag=interactable.interact.cl_right_down,type=interaction,limit=1] {response:1b}


## Левый верхний шкафчик

# Анимация шкафчика
execute as @e[tag=aj.cafe_locker.root] run function animated_java:cafe_locker/animations/shelf_left_close/play

# Меняет состояние
tag @e[type=marker,tag=cl_left_up.trigger] add cl_left_up.state.closed
tag @e[type=marker,tag=cl_left_up.trigger] remove cl_left_up.state.opened
data merge entity @e[tag=interactable.interact.cl_left_up,type=interaction,limit=1] {response:1b}

## Правый верхний шкафчик

# Анимация шкафчика
execute as @e[tag=aj.cafe_locker.root] run function animated_java:cafe_locker/animations/shelf_right_close/play

# Меняет состояние
tag @e[type=marker,tag=cl_right_up.trigger] add cl_right_up.state.closed
tag @e[type=marker,tag=cl_right_up.trigger] remove cl_right_up.state.opened
data merge entity @e[tag=interactable.interact.cl_right_up,type=interaction,limit=1] {response:1b}