# Данные для замены
#tag=0street_door_key ids/0street_door_key

data merge entity @e[tag=0street_door_key,type=interaction,limit=1] {width:0.5f}

tag @e[tag=0street_door_key,type=interaction,limit=1] remove picked

data merge entity @e[tag=0street_door_key,type=item_display,limit=1] {transformation:{scale:[1.0f,1.0f,1.0f]},start_interpolation:0}
data merge entity @e[tag=crowbar_display,type=item_display,limit=1] {transformation:{scale:[0.5f,0.5f,0.5f]},start_interpolation:0,interpolation_duration:5}