# Данные для замены
#tag=small_kitchen ids/small_kitchen

schedule function map:interactable/paper/ids/small_kitchen/player_check 1t
execute as @e[tag=small_kitchen,tag=interactable.interact.paper,type=interaction,limit=1] at @s unless entity @a[distance=..3] run function map:interactable/paper/ids/small_kitchen/remove
execute as @e[tag=small_kitchen,tag=interactable.interact.paper,type=interaction,limit=1] at @s unless entity @a[distance=..3] run scoreboard players set @s interactableStatus 0