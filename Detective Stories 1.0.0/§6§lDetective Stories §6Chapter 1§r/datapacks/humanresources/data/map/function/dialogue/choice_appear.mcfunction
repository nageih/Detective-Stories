schedule function map:dialogue/choice_appear 1t

execute as @e[type=text_display,limit=1,tag=dialogue_variant] unless entity @s[nbt={transformation:{scale:[0.0625f,0.0625f,0.0625f]}}] run data merge entity @s {transformation:{scale:[0.0625f,0.0625f,0.0625f]},start_interpolation:0}

tag @a[tag=!db_selecting] add db_selecting

execute unless entity @n[type=interaction,limit=1,tag=db_choice,nbt={width:1f}] run data merge entity @e[tag=db_choice,type=interaction,limit=1] {width:1f}

tp @e[tag=db_choice,type=interaction] @a[tag=player,limit=1]