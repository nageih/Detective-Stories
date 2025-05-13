# Проверка уже относительно маркера есть ли рядом игрок, и если нет, то прерывается
execute at @s unless entity @a[distance=..3] run return 0

# Если сущность обнаружит относительно себя игрока
function map:triggers/single/7kitchen/func

# Добавляет себе в дату "использован", и триггер перестаёт быть рабочим
data merge entity @s {data:{trigger:1b,used:1b}}