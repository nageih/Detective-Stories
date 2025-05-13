# Анимация вставляния ключа
execute as @e[tag=aj.kitchen_door.root] run function animated_java:kitchen_door/animations/key/play

# Дверь становится с состоянием открытой
tag @e[type=marker,tag=kd.trigger] add kd.state.opened

# Дверь открывается через 2.25 секунд
schedule function map:interactable/kitchen_door/open 45t
tag @e[type=marker,tag=kd.trigger] add cooldown
schedule function map:interactable/kitchen_door/cooldown 55t

# Забирает ключ из руки игрока
clear @a yellow_dye[custom_model_data={floats:[500f]}]

# Убирает у двери тег, что она закрыта
tag @e[type=marker,tag=kd.trigger] remove closed

# Это чтобы функция status дальше не продолжилась :)
return 0