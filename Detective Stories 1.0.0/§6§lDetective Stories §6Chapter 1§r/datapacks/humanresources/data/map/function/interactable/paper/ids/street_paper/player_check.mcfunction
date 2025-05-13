# Данные для замены
#tag=street_paper ids/street_paper

schedule function map:interactable/paper/ids/street_paper/player_check 1t
execute as @e[tag=street_paper,tag=interactable.interact.paper,type=interaction,limit=1] at @s unless entity @a[distance=..3] run function map:interactable/paper/ids/street_paper/remove
execute as @e[tag=street_paper,tag=interactable.interact.paper,type=interaction,limit=1] at @s unless entity @a[distance=..3] run scoreboard players set @s interactableStatus 0