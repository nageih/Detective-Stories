schedule function map:triggers/execute/cafe_door/out_loop 1t

execute as @e[tag=cd_out] at @s unless entity @a[distance=..0.975,tag=player] run return 0
execute if entity @e[tag=interactable.cafe_door,tag=cooldown] run return 0
execute as @e[tag=cd_out] at @s if entity @a[distance=..0.975,tag=player] as @e[tag=aj.cafe_doors.root] run function animated_java:cafe_doors/animations/close/play
execute as @e[tag=cd_out] at @s if entity @a[distance=..0.975,tag=player] as @e[tag=aj.cafe_doors.root] run function map:interactable/radio/stop
execute as @e[tag=cd_out] at @s if entity @a[distance=..0.975,tag=player] as @e[tag=aj.cafe_doors.root] run tag @a remove inside
execute as @e[tag=cd_out] at @s if entity @a[distance=..0.975,tag=player] as @e[tag=aj.cafe_doors.root] run schedule clear map:loop/weather
execute as @e[tag=cd_out] at @s if entity @a[distance=..0.975,tag=player] as @e[tag=aj.cafe_doors.root] run stopsound @a * map.ambient.windy_inside
execute as @e[tag=cd_out] at @s if entity @a[distance=..0.975,tag=player] as @e[tag=aj.cafe_doors.root] run function map:loop/weather
execute as @e[tag=cd_out] at @s if entity @a[distance=..0.975,tag=player,tag=!NO_MORE_RADIO] as @e[tag=aj.radio.root] run function animated_java:radio/animations/playing/play
execute as @e[tag=cd_out] at @s if entity @a[distance=..0.975,tag=player] as @e[tag=aj.cafe_doors.root] run playsound map.interaction.cafe_door master @a -146.0 53 -74.0 1 1