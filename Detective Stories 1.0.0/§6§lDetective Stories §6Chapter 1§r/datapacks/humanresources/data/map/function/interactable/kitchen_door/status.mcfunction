# Забирает ачивку
advancement revoke @a only map:interactable/kitchen_door

# Если у игрока в руке ключ, то дверь откроется
execute if entity @a[nbt={SelectedItem:{id:"minecraft:yellow_dye",components:{"minecraft:custom_model_data":{floats:[500f]}}}},tag=bartender_waiting] if entity @a[tag=language.russian] run function map:dialogue/init_text {text:"Мне пока незачем использовать этот ключ.",total_symbols:40,time:1,state:2,next_dialogue:"none",db_visual:1}
execute if entity @a[nbt={SelectedItem:{id:"minecraft:yellow_dye",components:{"minecraft:custom_model_data":{floats:[500f]}}}},tag=bartender_waiting] if entity @a[tag=language.english] run function map:dialogue/init_text {text:"I don’t need to use this key for now.",total_symbols:37,time:1,state:2,next_dialogue:"none",db_visual:1}
execute if entity @a[nbt={SelectedItem:{id:"minecraft:yellow_dye",components:{"minecraft:custom_model_data":{floats:[500f]}}}},tag=bartender_waiting] if entity @a[tag=language.spanish] run function map:dialogue/init_text {text:"No necesito usar esta llave por ahora.",total_symbols:38,time:1,state:2,next_dialogue:"none",db_visual:1}
execute if entity @a[tag=bartender_waiting] run return 0
execute if entity @a[nbt={SelectedItem:{id:"minecraft:yellow_dye",components:{"minecraft:custom_model_data":{floats:[500f]}}}}] run function map:interactable/kitchen_door/key

# Если дверь закрыта (на ключ) - функция не продолжится
execute if entity @e[type=marker,tag=kd.trigger,tag=closed] run return 0

# Кд полсекунды
execute if entity @e[type=marker,tag=kd.trigger,tag=cooldown] run return 0
tag @e[type=marker,tag=kd.trigger] add cooldown
schedule function map:interactable/kitchen_door/cooldown 10t


## Сами функции

# Если состояние, что дверь - открыта
execute if entity @e[type=marker,tag=kd.trigger,tag=kd.state.opened] run return run function map:interactable/kitchen_door/close
# Если состояние, что дверь - закрыта
execute if entity @e[type=marker,tag=kd.trigger,tag=kd.state.closed] run function map:interactable/kitchen_door/open