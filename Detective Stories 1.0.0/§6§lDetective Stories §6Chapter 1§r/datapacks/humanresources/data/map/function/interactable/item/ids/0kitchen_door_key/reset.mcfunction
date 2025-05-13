# Данные для замены
#tag=0kitchen_door_key ids/0kitchen_door_key

data merge entity @e[tag=0kitchen_door_key,type=interaction,limit=1] {width:0.8f}

tag @e[tag=0kitchen_door_key,type=interaction,limit=1] remove picked

data merge entity @e[tag=0kitchen_door_key,type=item_display,limit=1] {transformation:{scale:[1.0f,1.0f,1.0f]},start_interpolation:0}