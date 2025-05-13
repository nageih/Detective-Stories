$execute if entity @e[type=shulker,distance=..1.5,sort=nearest,limit=1,tag=phys.cube,tag=$(tag)] run tellraw @a {"text":"Succesfully deleted!"}
$execute unless entity @e[type=shulker,distance=..1.5,sort=nearest,limit=1,tag=phys.cube,tag=$(tag)] run tellraw @a {"text":"Не нашёл 😡"}
$effect give @e[type=shulker,distance=..1.5,sort=nearest,limit=1,tag=phys.cube,tag=$(tag)] glowing 2 1 true
$kill @e[type=item_display,distance=..1.5,sort=nearest,limit=1,tag=$(tag)]
$kill @e[type=shulker,distance=..1.5,sort=nearest,limit=1,tag=phys.cube,tag=$(tag)]
$kill @e[type=interaction,distance=..1.5,sort=nearest,limit=1,tag=$(tag)]
