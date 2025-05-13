# Сюжетное (не дают в самом начале трогать свет)

# Ресет ачивки
advancement revoke @a only map:interactable/switch_kitchen

# Начисление числа (от которого зависит включить или нет)
scoreboard players add #interactable.switch_kitchen status 1

# Проверка на то какое сейчас состояние
execute if score #interactable.switch_kitchen status matches 1 run function map:interactable/kitchen_switch/off
execute if score #interactable.switch_kitchen status matches 2 run function map:interactable/kitchen_switch/on
execute if score #interactable.switch_kitchen status matches 2.. run scoreboard players set #interactable.switch_kitchen status 0