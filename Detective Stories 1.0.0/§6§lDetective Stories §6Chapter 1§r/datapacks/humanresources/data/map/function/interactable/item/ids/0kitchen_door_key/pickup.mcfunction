# Данные для замены
#tag=0kitchen_door_key ids/0kitchen_door_key

data remove entity @s interaction
data remove entity @s attack
give @a yellow_dye[custom_name='{"translate":"map.item_name.kitchen_door_key","italic":false,"color":"#e5c4eb"}',lore=['[{"text":" ","italic":false}]','[{"translate":"map.item_description.kitchen_door_key.line1","italic":false}]','[{"translate":"map.item_description.kitchen_door_key.line2","italic":false}]'],custom_model_data={floats:[500f]}]
effect clear @a darkness
data merge entity @s {width:0.0f}
data merge entity @e[tag=0kitchen_door_key,type=item_display,distance=..2,limit=1] {transformation:{scale:[0.0f,0.0f,0.0f]},start_interpolation:0}
tag @s add picked