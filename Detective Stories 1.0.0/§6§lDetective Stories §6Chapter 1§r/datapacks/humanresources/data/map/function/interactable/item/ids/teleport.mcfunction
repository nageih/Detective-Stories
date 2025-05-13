$execute if entity @s[tag=s] as @e[tag=$(name),tag=interactable.prop.item] at @s run tp @s ~ ~ ~1
$execute if entity @s[tag=w] as @e[tag=$(name),tag=interactable.prop.item] at @s run tp @s ~-1 ~ ~
$execute if entity @s[tag=e] as @e[tag=$(name),tag=interactable.prop.item] at @s run tp @s ~1 ~ ~
$execute if entity @s[tag=n] as @e[tag=$(name),tag=interactable.prop.item] at @s run tp @s ~ ~ ~-1
$execute if entity @s[tag=s5] as @e[tag=$(name),tag=interactable.prop.item] at @s run tp @s ~ ~ ~0.5
$execute if entity @s[tag=w5] as @e[tag=$(name),tag=interactable.prop.item] at @s run tp @s ~-0.5 ~ ~
$execute if entity @s[tag=e5] as @e[tag=$(name),tag=interactable.prop.item] at @s run tp @s ~0.5 ~ ~
$execute if entity @s[tag=n5] as @e[tag=$(name),tag=interactable.prop.item] at @s run tp @s ~ ~ ~-0.5
$execute if entity @s[tag=h0.5] as @e[tag=$(name),tag=interactable.prop.item] at @s run tp @s ~ ~0.5 ~
$execute if entity @s[tag=h0.75] as @e[tag=$(name),tag=interactable.prop.item] at @s run tp @s ~ ~0.75 ~
$execute if entity @s[tag=h1] as @e[tag=$(name),tag=interactable.prop.item] at @s run tp @s ~ ~1 ~
$execute if entity @s[tag=h1.5] as @e[tag=$(name),tag=interactable.prop.item] at @s run tp @s ~ ~1.5 ~
$execute as @e[tag=$(name),type=item_display] at @s run tp @e[tag=$(name),type=text_display,distance=..3] ^0.5 ^-0.5 ^0.5
$execute as @e[tag=$(name),type=item_display] at @s run data merge entity @e[tag=$(name),type=text_display,limit=1,distance=..3] {transformation:{scale:[0.375f,0.375f,0.375f]},interpolation_duration:2,start_interpolation:3}