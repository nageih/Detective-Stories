# Данные для замены
#tag=kdpaper ids/kdpaper

schedule function map:interactable/paper/ids/kdpaper/player_check 1t
execute as @e[tag=kdpaper,tag=interactable.interact.paper,type=interaction,limit=1] at @s unless entity @a[distance=..3] run function map:interactable/paper/ids/kdpaper/remove
execute as @e[tag=kdpaper,tag=interactable.interact.paper,type=interaction,limit=1] at @s unless entity @a[distance=..3] run scoreboard players set @s interactableStatus 0