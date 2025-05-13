execute as @e[type=item_display,tag=phys.prop.box] at @s if block ~ ~ ~ #air positioned ~ ~-1 ~ unless entity @e[type=shulker,distance=0.01..0.99] run tp @s ~ ~0.75 ~
execute as @e[type=item_display,tag=phys.prop.box] at @s unless block ~ ~ ~ #air align y run tp @s ~ ~1.0 ~
execute as @e[type=item_display,tag=phys.prop.box] at @s unless block ~-0.5 ~ ~ #air run tp @s ~0.1 ~ ~
execute as @e[type=item_display,tag=phys.prop.box] at @s unless block ~0.5 ~ ~ #air run tp @s ~-0.1 ~ ~
execute as @e[type=item_display,tag=phys.prop.box] at @s unless block ~ ~ ~-0.5 #air run tp @s ~ ~ ~0.1
execute as @e[type=item_display,tag=phys.prop.box] at @s unless block ~ ~ ~0.5 #air run tp @s ~ ~ ~-0.1
#execute as @e[type=item_display,tag=phys.prop.box] at @s unless block ~ ~ ~ #air align y run say 1

#execute as @e[type=item_display,tag=phys.prop.box] at @s positioned ~ ~-0.7 ~ if entity @e[type=shulker,distance=..0.69] align y run tp @s ~ ~1.0 ~
#execute as @e[type=item_display,tag=phys.prop.box] at @s positioned ~-0.7 ~-0.7 ~ if entity @e[type=shulker,distance=..0.69] align y run tp @s ~ ~1.0 ~
#execute as @e[type=item_display,tag=phys.prop.box] at @s positioned ~0.7 ~-0.7 ~ if entity @e[type=shulker,distance=..0.69] align y run tp @s ~ ~1.0 ~
#execute as @e[type=item_display,tag=phys.prop.box] at @s positioned ~ ~-0.7 ~-0.7 if entity @e[type=shulker,distance=..0.69] align y run tp @s ~ ~1.0 ~
#execute as @e[type=item_display,tag=phys.prop.box] at @s positioned ~ ~-0.7 ~0.7 if entity @e[type=shulker,distance=..0.69] align y run tp @s ~ ~1.0 ~
execute as @e[type=item_display,tag=phys.prop.box] at @s positioned ~ ~-1 ~ if entity @e[type=shulker,distance=0.01..0.99] align y run tp @s ~ ~1 ~

schedule function map:physics/box/fall_loop 1t