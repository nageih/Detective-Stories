# Возврат ачивки
advancement revoke @a only map:click/lobby_language

function map:language

# Появляется кнопка продолжить после того как игрок жма по нужному языку
execute if entity @a[tag=!language_selected] as @e[tag=aj.pre_menu.root] run function animated_java:pre_menu/animations/continue_appear/play
execute if entity @a[tag=!language_selected] run data merge entity 9407ae12-f839-4cce-be36-8c7ee5e16dd1 {width:0.75f}

# Русский язык
execute as f99dbac7-2884-4037-a9a7-20d89c05d877 if entity @s[nbt={interaction:{}}] run tag @a remove language.english
execute as f99dbac7-2884-4037-a9a7-20d89c05d877 if entity @s[nbt={interaction:{}}] run tag @a remove language.spanish
execute as f99dbac7-2884-4037-a9a7-20d89c05d877 if entity @s[nbt={interaction:{}}] run tag @a add language.russian
execute as f99dbac7-2884-4037-a9a7-20d89c05d877 if entity @s[nbt={interaction:{}}] as @e[tag=aj.pre_menu.root] run function animated_java:pre_menu/animations/russian/play
# Английский язык
execute as 56f0739b-f89d-41d5-b053-7dd2a2813318 if entity @s[nbt={interaction:{}}] run tag @a remove language.russian
execute as 56f0739b-f89d-41d5-b053-7dd2a2813318 if entity @s[nbt={interaction:{}}] run tag @a remove language.spanish
execute as 56f0739b-f89d-41d5-b053-7dd2a2813318 if entity @s[nbt={interaction:{}}] run tag @a add language.english
execute as 56f0739b-f89d-41d5-b053-7dd2a2813318 if entity @s[nbt={interaction:{}}] as @e[tag=aj.pre_menu.root] run function animated_java:pre_menu/animations/english/play
# Испанский язык
execute as 2dc0d975-8b96-447a-a314-eea007ed4c72 if entity @s[nbt={interaction:{}}] run tag @a remove language.russian
execute as 2dc0d975-8b96-447a-a314-eea007ed4c72 if entity @s[nbt={interaction:{}}] run tag @a remove language.english
execute as 2dc0d975-8b96-447a-a314-eea007ed4c72 if entity @s[nbt={interaction:{}}] run tag @a add language.spanish
execute as 2dc0d975-8b96-447a-a314-eea007ed4c72 if entity @s[nbt={interaction:{}}] as @e[tag=aj.pre_menu.root] run function animated_java:pre_menu/animations/espaniol/play

# Вывод перед лицом то что язык выбран
title @a times 10 10 10
title @a title {"text":" "}
title @a subtitle {"translate":"map.lobby.language_updated","font":"minecraft_five"}

# Очистка предыдущих значений
data remove entity f99dbac7-2884-4037-a9a7-20d89c05d877 interaction
data remove entity 56f0739b-f89d-41d5-b053-7dd2a2813318 interaction
data remove entity 2dc0d975-8b96-447a-a314-eea007ed4c72 interaction

# Это чтобы анимация не проигралась ещё раз
tag @a add language_selected