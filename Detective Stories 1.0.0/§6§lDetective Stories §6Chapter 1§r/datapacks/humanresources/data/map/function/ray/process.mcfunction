# Всем привет
execute at @s if entity @e[type=item_display,tag=map.usable,distance=..1] run tag @s add hitUsable
execute at @s unless entity @e[type=item_display,tag=map.usable,distance=..1] run tag @s remove hitUsable
execute as @s if entity @s[tag=!hitUsable] as @e[distance=..5,type=item_display,tag=map.usable,tag=phys.prop.box] run data merge entity @s {Glowing:0b}

# С вами фрост
execute as @s[tag=hitUsable] at @s run data merge entity @e[type=item_display,tag=map.usable,sort=nearest,limit=1] {Glowing:1b}
execute as @s[tag=hitUsable] at @s if entity @e[distance=..1,tag=phys.cube,sort=nearest,limit=1] run title @a actionbar [{"translate":"map.interactable.pickup","font":"minecraft_five"},{"text":" \uA011","font":"default","shadow_color": [0,0,0,0]}]
execute as @s[tag=!hitUsable] at @s run data merge entity @e[type=item_display,tag=map.usable,sort=nearest,limit=1] {Glowing:0b}