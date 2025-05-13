schedule function map:triggers/execute/cafe_door/in_loop 1t

execute as @e[tag=cd_in] at @s unless entity @a[distance=..0.975,tag=player] run return 0
execute if entity @e[tag=interactable.cafe_door,tag=cooldown] run return 0
execute as @e[tag=cd_in] at @s if entity @a[distance=..0.975,tag=player] as @e[tag=aj.cafe_doors.root] run function animated_java:cafe_doors/animations/open/play
execute as @e[tag=cd_in] at @s if entity @a[distance=..0.975,tag=player,tag=!NO_MORE_RADIO] as @e[tag=aj.cafe_doors.root] run schedule function map:interactable/radio/play 1s
execute as @e[tag=cd_in] at @s if entity @a[distance=..0.975,tag=player] as @e[tag=aj.cafe_doors.root] run tag @a add inside
execute as @e[tag=cd_in] at @s if entity @a[distance=..0.975,tag=player] if entity @e[type=item_display,tag=phys.prop.box,tag=picked] run function map:physics/reset
execute as @e[tag=cd_in] at @s if entity @a[distance=..0.975,tag=player] if entity @e[type=item_display,tag=phys.prop.box,tag=picked] run function map:physics/box/drop
execute as @e[tag=cd_in] at @s if entity @a[distance=..0.975,tag=player] as @e[tag=aj.cafe_doors.root] run schedule clear map:loop/weather
execute as @e[tag=cd_in] at @s if entity @a[distance=..0.975,tag=player] as @e[tag=aj.cafe_doors.root] run stopsound @a * map.ambient.windy
execute as @e[tag=cd_in] at @s if entity @a[distance=..0.975,tag=player] as @e[tag=aj.cafe_doors.root] run function map:loop/weather
execute as @e[tag=cd_in] at @s if entity @a[distance=..0.975,tag=player] as @e[tag=aj.cafe_doors.root] run playsound map.interaction.cafe_door master @a -146.0 53 -74.0 1 1