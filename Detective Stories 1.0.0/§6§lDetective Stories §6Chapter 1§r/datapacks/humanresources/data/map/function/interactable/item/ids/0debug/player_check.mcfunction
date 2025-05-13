# Данные для замены
#tag=0debug ids/0debug

schedule function map:interactable/item/ids/0debug/player_check 1t
execute as @e[tag=0debug,tag=interactable.interact.item,type=interaction,limit=1] at @s unless entity @a[distance=..3] run function map:interactable/item/ids/0debug/remove
execute as @e[tag=0debug,tag=interactable.interact.item,type=interaction,limit=1] at @s unless entity @a[distance=..3] run scoreboard players set @s interactableStatus 0

# Проверка если игрок проинтерактировал с другой сущностью
execute as @e[tag=0debug,tag=interactable.interact.item,type=interaction,limit=1] at @s if entity @e[distance=..4,type=interaction,tag=interactable.interact.item,tag=!0debug,tag=used] run function map:interactable/item/ids/0debug/remove
execute as @e[tag=0debug,tag=interactable.interact.item,type=interaction,limit=1] at @s if entity @e[distance=..4,type=interaction,tag=interactable.interact.item,tag=!0debug,tag=used] run scoreboard players set @s interactableStatus 0