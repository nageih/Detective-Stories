# Сброс триггеров, меню и прочего
function map:triggers/reset_all
# Сброс тэгов
tag @a remove inside
tag @a remove in_dialogue

# Ресет интерактивных дверей, шкафчиков и т.д.
function map:interactable/kitchen_door/reset
function map:interactable/pantry_door/reset
function map:interactable/street_door/reset
function map:interactable/cafe_locker/reset
function map:interactable/main_switch/reset
function map:interactable/kitchen_switch/reset
function map:interactable/sign_switch/reset
function map:interactable/fridge/reset

# Возврат коробок на место в сарае
function map:physics/reset

# Выдаёт всем рут-ачивку
advancement grant @a only map:advancements/root

# Очистка предметов
clear @a yellow_dye[custom_model_data={floats:[502f]}]

# Стопсаунд музыки
schedule clear map:loop/normal_ambience
stopsound @a * map.music.ambience1
schedule clear map:loop/dark_ambience
stopsound @a * map.music.ambience2

# Ресет предметов
function map:interactable/item/ids/0kitchen_door_key/reset
function map:interactable/item/ids/0street_door_key/reset

# Геймрулы
gamerule reducedDebugInfo true
gamerule sendCommandFeedback false

# Сброс диалогов
function map:dialogue/dialogues/0/reset
function map:dialogue/dialogues/1/reset