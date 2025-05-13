# Ресет ачивки
advancement revoke @a only map:interactable/switch_main
# Сюжетное (не дают в самом начале трогать свет)
execute unless entity @e[tag=piggie,nbt={Saddle:1b}] run return run function map:dialogue/lang/main_switch


# Начисление числа (от которого зависит включить или нет)
scoreboard players add #interactable.switch_main status 1

# Проверка на то какое сейчас состояние
execute if score #interactable.switch_main status matches 1 run function map:interactable/main_switch/off
execute if score #interactable.switch_main status matches 2 run function map:interactable/main_switch/on
execute if score #interactable.switch_main status matches 2.. run scoreboard players set #interactable.switch_main status 0