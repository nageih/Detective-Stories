# Сюжетное (не дают в самом начале трогать свет)

# Ресет ачивки
advancement revoke @a only map:interactable/switch_cafe_sign

# Начисление числа (от которого зависит включить или нет)
scoreboard players add #interactable.switch_sign status 1

# Проверка на то какое сейчас состояние
execute if score #interactable.switch_sign status matches 1 run function map:interactable/sign_switch/off
execute if score #interactable.switch_sign status matches 2 run function map:interactable/sign_switch/on
execute if score #interactable.switch_sign status matches 2.. run scoreboard players set #interactable.switch_sign status 0