#execute as @e[tag=interactable.interact.paper,sort=nearest,limit=1] at @s run particle angry_villager ~ ~1 ~ 0 0 0 0 0 force
#execute as @e[tag=interactable.interact.paper] at @s on target run particle angry_villager ~ ~1 ~ 0 0 0 0 0 force

# Ставит в storage первое число из тега, что ставится при спавне модели
data modify storage minecraft:interactable interactable.id set from entity @e[type=interaction,tag=interactable.interact.paper,sort=nearest,limit=1,nbt={interaction:{}}] Tags[0]

# Далее исполняется заданная функция с этим числом, где уже всё прописано
execute as @e[type=interaction,tag=interactable.interact.paper,sort=nearest,limit=1,nbt={interaction:{}}] run function map:interactable/paper/get_id with storage minecraft:interactable interactable
execute as @e[type=interaction,tag=interactable.interact.paper] at @s run data remove entity @s interaction
advancement revoke @a only map:interactable/paper