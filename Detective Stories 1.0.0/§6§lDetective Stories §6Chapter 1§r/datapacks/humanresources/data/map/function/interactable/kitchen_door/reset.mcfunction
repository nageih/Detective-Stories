# Забирает ачивку
advancement revoke @a only map:interactable/kitchen_door

tag @e[type=marker,tag=kd.trigger] add closed
tag @e[type=marker,tag=kd.trigger] remove sd.state.opened
tag @e[type=marker,tag=kd.trigger] remove sd.state.closed

execute as @e[tag=aj.kitchen_door.root] run function animated_java:kitchen_door/animations/open/stop

fill -130 53 -85 -130 52 -85 iron_trapdoor[facing=north,half=bottom,open=true]