$execute if entity @s[tag=s] at @s run tp @e[tag=$(name),type=item_display] ~ ~ ~
$execute if entity @s[tag=w] at @s run tp @e[tag=$(name),type=item_display] ~ ~ ~
$execute if entity @s[tag=e] at @s run tp @e[tag=$(name),type=item_display] ~ ~ ~
$execute if entity @s[tag=n] at @s run tp @e[tag=$(name),type=item_display] ~ ~ ~
$execute if entity @s[tag=s5] at @s run tp @e[tag=$(name),type=item_display] ~ ~ ~
$execute if entity @s[tag=w5] at @s run tp @e[tag=$(name),type=item_display] ~ ~ ~
$execute if entity @s[tag=e5] at @s run tp @e[tag=$(name),type=item_display] ~ ~ ~
$execute if entity @s[tag=n5] at @s run tp @e[tag=$(name),type=item_display] ~ ~ ~
$execute if entity @s[tag=h0.5] at @s run tp @e[tag=$(name),type=item_display] ~ ~ ~
$execute if entity @s[tag=h0.75] at @s run tp @e[tag=$(name),type=item_display] ~ ~ ~
$execute if entity @s[tag=h1] at @s run tp @e[tag=$(name),type=item_display] ~ ~ ~
$execute if entity @s[tag=h1.5] at @s run tp @e[tag=$(name),type=item_display] ~ ~ ~
$execute as @e[tag=$(name),type=item_display] at @s run tp @e[tag=$(name),type=text_display,distance=..3] ^ ^ ^
$execute as @e[tag=$(name),type=item_display] at @s run data merge entity @e[tag=$(name),type=text_display,limit=1,distance=..3] {transformation:{scale:[0.0f,0.0f,0.0f]},interpolation_duration:2,start_interpolation:1}