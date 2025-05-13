# Данные для замены
#tag=0debug ids/0debug

data merge entity @e[tag=0debug,type=interaction,limit=1] {width:0.5f}

tag @e[tag=0debug,type=interaction,limit=1] remove picked

data merge entity @e[tag=0debug,type=item_display,limit=1] {transformation:{scale:[1.0f,1.0f,1.0f]},start_interpolation:0}