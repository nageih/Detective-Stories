# Ставит в storage первое слово из тега, что ставится при спавне модели
data modify storage minecraft:interactable interactable.item.name set from entity @e[type=interaction,tag=interactable.interact.item,sort=nearest,limit=1,nbt={interaction:{}}] Tags[0]
data modify storage minecraft:interactable interactable.item.name set from entity @e[type=interaction,tag=interactable.interact.item,sort=nearest,limit=1,nbt={attack:{}}] Tags[0]

# Далее исполняется заданная функция с этим числом, где уже всё прописано
execute as @e[type=interaction,tag=interactable.interact.item,sort=nearest,limit=1,nbt={interaction:{}}] run function map:interactable/item/get_id with storage minecraft:interactable interactable.item
execute as @e[type=interaction,tag=interactable.interact.item,sort=nearest,limit=1,nbt={attack:{}}] run function map:interactable/item/get_id with storage minecraft:interactable interactable.item
execute as @e[type=interaction,tag=interactable.interact.item] at @s run data remove entity @s interaction
execute as @e[type=interaction,tag=interactable.interact.item] at @s run data remove entity @s attack
advancement revoke @a only map:interactable/item
advancement revoke @a only map:interactable/item_lmb