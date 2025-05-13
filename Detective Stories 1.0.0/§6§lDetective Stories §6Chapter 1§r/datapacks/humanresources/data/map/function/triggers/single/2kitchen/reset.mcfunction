# Ресет триггера
execute as @e[tag=2kitchen,type=marker,limit=1] run data merge entity @s {data:{trigger:1b,used:0b}}