# Забирает ачивку
advancement revoke @a only map:interactable/pantry_door

# Если код правильный, то дверь откроется
execute if score *digit1 status = *cdigit1 status if score *digit2 status = *cdigit2 status if score *digit3 status = *cdigit3 status if score *digit4 status = *cdigit4 status if entity @e[type=marker,tag=pd.trigger,tag=closed] run function map:interactable/pantry_door/key
execute unless score *digit1 status = *cdigit1 status unless score *digit2 status = *cdigit2 status unless score *digit3 status = *cdigit3 status unless score *digit4 status = *cdigit4 status as @e[tag=aj.pantry_door.root] run function animated_java:pantry_door/animations/handle/play
execute unless score *digit1 status = *cdigit1 status unless score *digit2 status = *cdigit2 status unless score *digit3 status = *cdigit3 status unless score *digit4 status = *cdigit4 status as @e[tag=aj.pantry_door.root] at @e[tag=interactable.interact.pantry_door] run playsound map.interaction.toilet_door.closed master @a ~ ~ ~ 1 1
# Если дверь закрыта (код не подходит) - функция не продолжится
execute if entity @e[type=marker,tag=pd.trigger,tag=closed] run return 0

# Кд полсекунды
execute if entity @e[type=marker,tag=pd.trigger,tag=cooldown] run return 0
tag @e[type=marker,tag=pd.trigger] add cooldown
schedule function map:interactable/pantry_door/cooldown 10t


## Сами функции

# Если состояние, что дверь - открыта
execute if entity @e[type=marker,tag=pd.trigger,tag=pd.state.opened] run return run function map:interactable/pantry_door/close
# Если состояние, что дверь - закрыта
execute if entity @e[type=marker,tag=pd.trigger,tag=pd.state.closed] run function map:interactable/pantry_door/open