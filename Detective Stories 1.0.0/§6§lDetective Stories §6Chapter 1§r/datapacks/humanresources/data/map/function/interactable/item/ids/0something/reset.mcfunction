# Данные для замены
#tag=0something ids/0something

data merge entity @e[tag=0something,type=interaction,limit=1] {width:0.5f}

tag @e[tag=0something,type=interaction,limit=1] remove picked

data merge entity @e[tag=0something,type=item_display,limit=1] {transformation:{scale:[1.0f,1.0f,1.0f]},start_interpolation:0}