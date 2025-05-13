# Забирает ачивку
advancement revoke @a only map:interactable/street_door

# Если у игрока в руке ключ, то дверь откроется
execute if entity @a[nbt={SelectedItem:{id:"minecraft:yellow_dye",components:{"minecraft:custom_model_data":{floats:[501f]}}}}] run function map:interactable/street_door/key

# Если дверь закрыта (на ключ) - функция не продолжится
execute if entity @e[type=marker,tag=sd.trigger,tag=closed] run return 0

# Кд полсекунды
execute if entity @e[type=marker,tag=sd.trigger,tag=cooldown] run return 0
tag @e[type=marker,tag=sd.trigger] add cooldown
schedule function map:interactable/street_door/cooldown 15t


## Сами функции

# Если состояние, что дверь - открыта
execute if entity @e[type=marker,tag=sd.trigger,tag=sd.state.opened] run return run function map:interactable/street_door/close
# Если состояние, что дверь - закрыта
execute if entity @e[type=marker,tag=sd.trigger,tag=sd.state.closed] run function map:interactable/street_door/open