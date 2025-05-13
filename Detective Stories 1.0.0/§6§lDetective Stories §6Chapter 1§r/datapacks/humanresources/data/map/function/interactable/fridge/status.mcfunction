# Забирает ачивку
advancement revoke @a only map:interactable/fridge

# Кд полсекунды
execute if entity @e[type=marker,tag=fridge.trigger,tag=cooldown] run return 0
tag @e[type=marker,tag=fridge.trigger] add cooldown
schedule function map:interactable/fridge/cooldown 15t


## Сами функции

# Если состояние, что дверь - открыта
execute if entity @e[type=marker,tag=fridge.trigger,tag=fridge.state.opened] run return run function map:interactable/fridge/close
# Если состояние, что дверь - закрыта
execute if entity @e[type=marker,tag=fridge.trigger,tag=fridge.state.closed] run function map:interactable/fridge/open