schedule function map:dialogue/remove_text_appear 1t

execute unless entity @n[type=text_display,limit=1,tag=dialogue_rmb_text,nbt={transformation:{scale:[0.0625f,0.0625f,0.0625f]}}] run data merge entity @n[type=text_display,limit=1,tag=dialogue_rmb_text] {transformation:{scale:[0.0625f,0.0625f,0.0625f]},start_interpolation:1,interpolation_duration:5}

execute unless entity @n[type=interaction,limit=1,tag=db_remove,nbt={width:1f}] run data merge entity @e[tag=db_remove,type=interaction,limit=1] {width:1f}

tp @e[tag=db_remove,type=interaction] @a[tag=player,limit=1]