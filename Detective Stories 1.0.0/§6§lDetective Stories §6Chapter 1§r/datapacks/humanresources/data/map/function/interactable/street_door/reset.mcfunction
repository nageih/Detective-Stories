# Забирает ачивку
advancement revoke @a only map:interactable/street_door

tag @e[type=marker,tag=sd.trigger] add closed
tag @e[type=marker,tag=sd.trigger] remove sd.state.opened
tag @e[type=marker,tag=sd.trigger] remove sd.state.closed

execute as @e[tag=aj.street_door.root] run function animated_java:street_door/animations/open/stop

fill -147 52 -101 -147 53 -101 iron_trapdoor[facing=north,half=bottom,open=true]