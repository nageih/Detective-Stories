# Данные для замены
#tag=kotherpaper ids/kotherpaper

schedule function map:interactable/paper/ids/kotherpaper/player_check 1t
execute as @e[tag=kotherpaper,tag=interactable.interact.paper,type=interaction,limit=1] at @s unless entity @a[distance=..3] run function map:interactable/paper/ids/kotherpaper/remove
execute as @e[tag=kotherpaper,tag=interactable.interact.paper,type=interaction,limit=1] at @s unless entity @a[distance=..3] run scoreboard players set @s interactableStatus 0