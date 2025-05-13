# Данные для замены
#tag=missing_person ids/missing_person

schedule function map:interactable/paper/ids/missing_person/player_check 1t
execute as @e[tag=missing_person,tag=interactable.interact.paper,type=interaction,limit=1] at @s unless entity @a[distance=..3] run function map:interactable/paper/ids/missing_person/remove
execute as @e[tag=missing_person,tag=interactable.interact.paper,type=interaction,limit=1] at @s unless entity @a[distance=..3] run scoreboard players set @s interactableStatus 0