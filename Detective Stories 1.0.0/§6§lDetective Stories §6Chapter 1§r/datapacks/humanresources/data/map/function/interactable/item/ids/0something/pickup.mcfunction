# Данные для замены
#tag=0something ids/0something

say Debug
data remove entity @s interaction
data remove entity @s attack
give @a stone
effect clear @a darkness
data merge entity @s {width:0.0f}
data merge entity @e[tag=0something,type=item_display,distance=..2,limit=1] {transformation:{scale:[0.0f,0.0f,0.0f]},start_interpolation:0}
tag @s add picked