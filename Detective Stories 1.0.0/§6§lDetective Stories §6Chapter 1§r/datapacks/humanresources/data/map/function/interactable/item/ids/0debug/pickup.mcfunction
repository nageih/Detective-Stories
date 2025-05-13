# Данные для замены
#tag=0debug ids/0debug

say Debug
data remove entity @s interaction
data remove entity @s attack
give @a stone
effect clear @a darkness
data merge entity @s {width:0.0f}
data merge entity @e[tag=0debug,type=item_display,distance=..2,limit=1] {transformation:{scale:[0.0f,0.0f,0.0f]},start_interpolation:0}
tag @s add picked