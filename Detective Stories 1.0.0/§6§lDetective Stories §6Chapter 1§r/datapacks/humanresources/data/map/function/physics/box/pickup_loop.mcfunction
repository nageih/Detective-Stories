schedule function map:physics/box/pickup_loop 1t

execute as @a at @s anchored eyes unless entity @s[x_rotation=50..] run tp @e[type=item_display,tag=picked,limit=1,sort=nearest] ^ ^-0.3 ^1.65
execute as @a at @s anchored eyes unless entity @s[x_rotation=..-5] run tp @e[type=item_display,tag=picked,limit=1,sort=nearest] ^ ^-0.3 ^1.65

execute as @a at @s anchored feet if entity @s[x_rotation=71.8..90] positioned ~ ~3 ~ run tp @e[type=item_display,tag=picked,limit=1,sort=nearest] ^ ^1.2 ^3
execute as @a at @s anchored eyes if entity @s[x_rotation=50..71.7] run tp @e[type=item_display,tag=picked,limit=1,sort=nearest] ^ ^0.3 ^1.65
execute as @a at @s anchored eyes if entity @s[x_rotation=-48..-5] run tp @e[type=item_display,tag=picked,limit=1,sort=nearest] ^ ^-0.3 ^1.15
execute as @a at @s anchored eyes if entity @s[x_rotation=-90..-48] run tp @e[type=item_display,tag=picked,limit=1,sort=nearest] ^ ^ ^0.6


#execute as @e[type=item_display,tag=picked,limit=1,sort=nearest] at @s if entity @e[type=item_display,tag=!picked,distance=..2] run tp @e[type=item_display,tag=picked,limit=1,sort=nearest] ~ ~0.42 ~
#execute as @e[type=item_display,tag=picked,limit=1,sort=nearest] at @s if entity @e[tag=barrier,type=interaction,distance=..2] rotated as @e[tag=barrier,type=interaction] run tp @s ^ ^ ^0.75
execute as @e[type=item_display,tag=phys.prop.box] at @s unless block ~ ~ ~ #air align y at @p run tp @s ^ ^0.1 ^0.2

execute as @a at @s anchored eyes rotated as @s run tp @e[tag=raycast,limit=1] ^ ^ ^1.65 ~ ~
execute as @e[tag=raycast,limit=1] at @s if entity @e[type=interaction,tag=phys.interact.box,sort=nearest,nbt={interaction:{}},distance=..0.65,limit=1] run function map:physics/box/drop