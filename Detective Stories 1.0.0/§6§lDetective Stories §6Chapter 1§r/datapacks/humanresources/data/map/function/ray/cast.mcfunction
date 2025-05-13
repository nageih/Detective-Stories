# Position the ray at the caster's eyes and copy their facing
execute anchored eyes rotated as @s run tp @e[type=marker,tag=raycast,limit=1,sort=nearest] ^ ^ ^1.65 ~ ~

# Process the ray
execute as @e[tag=raycast,limit=1,sort=nearest] run function map:ray/process

# ЕСЛИ НЕТУ БУМАЖКИ ИЛИ ИНТЕРАКАЛЬФВЗФЫДЩДФЫВЗ
execute as @e[type=text_display,tag=ray_text,limit=1,sort=nearest] unless entity @a[nbt={active_effects:[{id:"minecraft:darkness"}]}] unless entity @s[nbt={transformation:{scale:[0.5f,0.5f,0.5f]}}] run data merge entity @s {transformation:{scale:[0.5f,0.5f,0.5f]},start_interpolation:0}
execute as @e[type=text_display,tag=ray_text,limit=1,sort=nearest] if entity @a[nbt={active_effects:[{id:"minecraft:darkness"}]}] unless entity @s[nbt={transformation:{scale:[0.0f,0.0f,0.0f]}}] run data merge entity @s {transformation:{scale:[0.0f,0.0f,0.0f]},start_interpolation:0}

execute as @e[type=text_display,tag=ray_text,limit=1,sort=nearest] if entity @e[type=item_display,distance=..6,limit=1,sort=random,tag=interactable,nbt={Glowing:1b}] run data remove entity @e[type=item_display,distance=..6,limit=1,sort=random,tag=interactable] Glowing

execute as @e[type=text_display,tag=ray_text,limit=1,sort=nearest] at @s unless entity @e[type=interaction,distance=..2,limit=1,sort=nearest,tag=interactable,tag=!picked] unless entity @s[nbt={transformation:{scale:[0.0f,0.0f,0.0f]}}] run data merge entity @s {transformation:{scale:[0.0f,0.0f,0.0f]},start_interpolation:0}

# Если рядом с игроком находится бумажка или прочий interactable
execute anchored eyes rotated as @s run tp @e[type=text_display,tag=ray_text,limit=1,sort=nearest] ^ ^-0.4 ^1.15
execute as @e[type=text_display,tag=ray_text,limit=1,sort=nearest] at @s if entity @e[type=interaction,distance=..2,limit=1,sort=nearest,tag=interactable,tag=!picked] at @e[type=interaction,distance=..1.25,limit=1,sort=nearest,tag=interactable] run tp @s ^ ^0.6 ^0.3
execute as @e[type=text_display,tag=ray_text,limit=1,sort=nearest,distance=..999] at @s if entity @e[type=interaction,distance=..2,limit=1,sort=nearest,tag=interactable,tag=!picked] run data merge entity @e[type=item_display,distance=..1.7,limit=1,sort=nearest,tag=interactable] {Glowing:1b}
