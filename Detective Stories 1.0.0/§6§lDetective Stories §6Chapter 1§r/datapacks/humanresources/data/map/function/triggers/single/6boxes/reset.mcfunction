# Ресет триггера
execute as @e[tag=6boxes,type=marker,limit=1] run data merge entity @s {data:{trigger:1b,used:0b}}