# Данные для замены
#tag=0kitchen_door_key ids/0kitchen_door_key
# Кулдаун в 0.5 секунды
execute if entity @s[tag=cooldown] run return 0
# Функция задержки
tag @s add cooldown
schedule function map:interactable/item/ids/0kitchen_door_key/cooldown 10t

# Убирает у себя то что предмет уже проинтерактировался (для работы функций далее)
execute unless data entity @p {active_effects:[{id:"minecraft:darkness"}]} run data remove entity @s interaction
execute unless data entity @p {active_effects:[{id:"minecraft:darkness"}]} run data remove entity @s attack

# Если предмет можно поднять, и игрок нажал пкм то выполнится функция поднятия (в которой выдастся тег, при этом не должно быть тега что предмет неподнимаем)
# и предмет станет неактивным
execute if entity @s[tag=picked] run return 0
execute if entity @s[tag=!nah,nbt={interaction:{}}] run function map:interactable/item/ids/0kitchen_door_key/pickup

# Если предмет можно поднять, и игрок нажал лкм, то предмет будет положен обратно
execute if entity @s[nbt={attack:{}}] run function map:interactable/item/ids/0kitchen_door_key/remove
execute if entity @s[nbt={attack:{}}] run scoreboard players set @s interactableStatus 0
execute if entity @s[nbt={attack:{}}] run return 0

# Начисляет число лично на себя
scoreboard players add @s interactableStatus 1

# Звук
execute at @s unless entity @s[nbt={interaction:{}}] run playsound minecraft:map.random.pop master @a ~ ~ ~ 1 1

# Если предмет можно поднять (что чаще всего и можно будет делать, но можно будет положить)
execute if score @s interactableStatus matches 1 run function map:interactable/item/ids/0kitchen_door_key/show
execute if score @s interactableStatus matches 2 run function map:interactable/item/ids/0kitchen_door_key/remove
execute if score @s interactableStatus matches 2.. run scoreboard players set @s interactableStatus 0
