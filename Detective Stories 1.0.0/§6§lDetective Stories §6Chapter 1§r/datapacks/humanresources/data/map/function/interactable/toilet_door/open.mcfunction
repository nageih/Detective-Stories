# Забирает ачивку
advancement revoke @a only map:interactable/toilet_door

# Кд полсекунды
#execute if entity @e[type=marker,tag=td.trigger,tag=cooldown] run return 0
#tag @e[type=marker,tag=td.trigger] add cooldown
#schedule function map:interactable/toilet_door/cooldown 12t

# Звук
playsound map.interaction.toilet_door.closed master @a -149 51.5 -84.0 1 1

# Анимация
execute as @e[tag=aj.toilet_door.root] run function animated_java:toilet_door/animations/trying/play

# Текст в чат
function map:interactable/toilet_door/random_phrase