# Забирает ачивку
advancement revoke @a only map:interactable/slot_machine

# Кд
execute if entity @e[type=marker,tag=sm.trigger,tag=cooldown] run return 0
tag @e[type=marker,tag=sm.trigger] add cooldown

# Звук
execute at @e[tag=interactable.interact.slot_machine,limit=1,type=interaction] run playsound map.interaction.slot_machine.use master @a ~ ~ ~ 1 1

# Анимация рычага
execute as @e[tag=aj.slot_machine.root] run function animated_java:slot_machine/animations/lever/play

# Спин через полсекунды
schedule function map:interactable/slot_machine/spin 10t