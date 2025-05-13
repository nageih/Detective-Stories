execute as @e[tag=raycast,limit=1,sort=nearest] at @s run tag @e[type=item_display,sort=nearest,limit=1,tag=phys.prop.box] add picked
execute as @e[type=item_display,tag=phys.prop,tag=!picked] run data merge entity @s {Glowing:0b}
schedule clear map:ray/loop
execute as @e[tag=phys.interact.box,type=interaction] at @s run data remove entity @s interaction
function map:physics/box/pickup_loop