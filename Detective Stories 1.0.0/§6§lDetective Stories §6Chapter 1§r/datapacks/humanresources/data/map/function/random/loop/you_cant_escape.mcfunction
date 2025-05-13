schedule function map:random/loop/you_cant_escape 1t

execute as @a[tag=player] at @s unless entity @e[tag=out_of_bounds,type=marker,distance=..1.5] run return 0
execute if entity @a[tag=out_of_bounds_cooldown] run return 0
execute as @a[tag=player] at @s if entity @e[tag=out_of_bounds,type=marker,distance=..1.5] run tag @a add out_of_bounds_cooldown
execute as @a[tag=player] at @s if entity @e[tag=out_of_bounds,type=marker,distance=..1.5] run title @a times 20 10 20
execute as @a[tag=player] at @s if entity @e[tag=out_of_bounds,type=marker,distance=..1.5] run title @a title {"text":"7","font":"minecraft:frame"}
execute as @a[tag=player] at @s if entity @e[tag=out_of_bounds,type=marker,distance=..1.5] run schedule function map:random/loop/you_cant_escape_tp 1s