# Неуязвимость для игрока к триггерам
tag @s add tylerthecreator

# Спавн маркера
$summon marker ~ ~ ~ {Tags:["$(name)"],Invulnerable:1b,CustomName:'trigger',data:{trigger:1b,used:0b}}