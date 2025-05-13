# Данные для замены
#tag=0street_door_key ids/0street_door_key

function map:triggers/execute/cafe_something/func
data remove entity @s interaction
data remove entity @s attack
give @a yellow_dye[custom_name='{"translate":"map.item_name.street_door_key","italic":false,"color":"#e5c4eb"}',lore=['[{"text":" ","italic":false}]','[{"translate":"map.item_description.street_door_key.line1","italic":false}]','[{"translate":"map.item_description.street_door_key.line2","italic":false}]'],custom_model_data={floats:[501f]}]
give @a yellow_dye[custom_name='{"translate":"map.item_name.crowbar","italic":false,"color":"#dea3c4"}',lore=['[{"text":" ","italic":false}]','[{"translate":"map.item_description.crowbar.line1","italic":false}]','[{"translate":"map.item_description.crowbar.line2","italic":false}]'],custom_model_data={floats:[502f]}]
effect clear @a darkness
data merge entity @s {width:0.0f}
data merge entity @e[tag=0street_door_key,type=item_display,distance=..2,limit=1] {transformation:{scale:[0.0f,0.0f,0.0f]},start_interpolation:0}
data merge entity @e[tag=crowbar_display,type=item_display,distance=..2,limit=1] {transformation:{scale:[0.0f,0.0f,0.0f]},start_interpolation:0,interpolation_duration:5}
tag @s add picked