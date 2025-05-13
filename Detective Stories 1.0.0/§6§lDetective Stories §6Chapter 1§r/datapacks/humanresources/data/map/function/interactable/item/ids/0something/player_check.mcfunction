# Данные для замены
#tag=0something ids/0something

schedule function map:interactable/item/ids/0something/player_check 1t
execute as @e[tag=0something,tag=interactable.interact.item,type=interaction,limit=1] at @s unless entity @a[distance=..3] run function map:interactable/item/ids/0something/remove
execute as @e[tag=0something,tag=interactable.interact.item,type=interaction,limit=1] at @s unless entity @a[distance=..3] run scoreboard players set @s interactableStatus 0


# Проверка если игрок проинтерактировал с другой сущностью
execute as @e[tag=0something,tag=interactable.interact.item,type=interaction,limit=1] at @s if entity @e[distance=..4,type=interaction,tag=interactable.interact.item,tag=!0something,tag=used] run function map:interactable/item/ids/0something/remove
execute as @e[tag=0something,tag=interactable.interact.item,type=interaction,limit=1] at @s if entity @e[distance=..4,type=interaction,tag=interactable.interact.item,tag=!0something,tag=used] run scoreboard players set @s interactableStatus 0