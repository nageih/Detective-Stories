# Забирает ачивку
advancement revoke @a only map:interactable/cl_left_up

# Кд полсекунды
execute if entity @e[type=marker,tag=cl_left_up.trigger,tag=cooldown] run return 0
tag @e[type=marker,tag=cl_left_up.trigger] add cooldown
data merge entity @e[tag=interactable.interact.cl_left_up,type=interaction,limit=1] {response:0b}
schedule function map:interactable/cafe_locker/left_up/cooldown 10t


## Сами функции

# Если состояние, что шкаф - открыт
execute if entity @e[type=marker,tag=cl_left_up.trigger,tag=cl_left_up.state.opened] run return run function map:interactable/cafe_locker/left_up/close
# Если состояние, что шкаф - закрыт
execute if entity @e[type=marker,tag=cl_left_up.trigger,tag=cl_left_up.state.closed] run function map:interactable/cafe_locker/left_up/open