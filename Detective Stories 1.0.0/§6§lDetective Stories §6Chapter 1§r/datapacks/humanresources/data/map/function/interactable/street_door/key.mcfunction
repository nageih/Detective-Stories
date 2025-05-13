# Анимация вставляния ключа
execute as @e[tag=aj.street_door.root] run function animated_java:street_door/animations/key/play

# Дверь становится с состоянием открытой
tag @e[type=marker,tag=sd.trigger] add sd.state.opened

# Дверь открывается через 2.25 секунд
schedule function map:interactable/street_door/open 45t
tag @e[type=marker,tag=sd.trigger] add cooldown
schedule function map:interactable/street_door/cooldown 55t

# Забирает ключ из руки игрока
clear @a yellow_dye[custom_model_data={floats:[501f]}]

# Убирает у двери тег, что она закрыта
tag @e[type=marker,tag=sd.trigger] remove closed

# Это чтобы функция status дальше не продолжилась :)
return 0