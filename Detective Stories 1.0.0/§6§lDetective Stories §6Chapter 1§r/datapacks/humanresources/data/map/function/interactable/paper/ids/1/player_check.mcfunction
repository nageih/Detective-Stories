schedule function map:interactable/paper/ids/1/player_check 1t
execute as @e[tag=1,tag=interactable.interact.paper,type=interaction,limit=1] at @s unless entity @a[distance=..3] run function map:interactable/paper/ids/1/remove
execute as @e[tag=1,tag=interactable.interact.paper,type=interaction,limit=1] at @s unless entity @a[distance=..3] run scoreboard players set @s interactableStatus 0