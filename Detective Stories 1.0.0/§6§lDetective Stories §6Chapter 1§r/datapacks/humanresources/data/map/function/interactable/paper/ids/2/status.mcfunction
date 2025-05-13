# Данные для замены
#tag=2 ids/2

# Кулдаун в 0.5 секунды
execute if entity @s[tag=cooldown] run return 0

# Начисляет число лично на себя
scoreboard players add @s interactableStatus 1

# Проверка чисел и прочее
execute if score @s interactableStatus matches 1 run function map:interactable/paper/ids/2/use
execute if score @s interactableStatus matches 2 run function map:interactable/paper/ids/2/remove
execute if score @s interactableStatus matches 2.. run scoreboard players set @s interactableStatus 0
# Функция задержки
tag @s add cooldown
schedule function map:interactable/paper/ids/2/cooldown 10t
# Звук
execute at @s run playsound map.items.paper master @a ~ ~ ~ 1 1