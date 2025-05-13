# Ресет всех триггеров
data merge entity @e[type=marker,tag=1cafe,limit=1] {data:{trigger:1b,used:0b}}
data merge entity @e[type=marker,tag=2kitchen,limit=1] {data:{trigger:1b,used:1b}}
data merge entity @e[type=marker,tag=3everyonedisappear,limit=1] {data:{trigger:1b,used:1b}}
data merge entity @e[type=marker,tag=4crucified,limit=1] {data:{trigger:1b,used:1b}}
data merge entity @e[type=marker,tag=5backtocafe,limit=1] {data:{trigger:1b,used:1b}}
data merge entity @e[type=marker,tag=6boxes,limit=1] {data:{trigger:1b,used:1b}}
data merge entity @e[type=marker,tag=7kitchen,limit=1] {data:{trigger:1b,used:1b}}
data merge entity @e[type=marker,tag=8getout,limit=1] {data:{trigger:1b,used:1b}}
data merge entity @e[type=marker,tag=9ending,limit=1] {data:{trigger:1b,used:1b}}
data merge entity @e[type=marker,tag=9true_ending,limit=1] {data:{trigger:1b,used:1b}}

# Возвращает возможность диалогов (интеракшны)
data merge entity 80d73490-6e26-440a-9ff3-65df5734a073 {width:1.25f}
data merge entity 2f8dcf37-0c28-4d26-81c4-53ed08175581 {width:1f}

# Аттрибуты
execute as @a run attribute @s jump_strength base set 0.37
execute as @a run attribute @s entity_interaction_range base set 1.75

# Убирает следы от пуль
item replace entity @e[tag=shot_marks,type=item_display,limit=1] container.0 with air

# "Останавливает" катсцену (слоумо страшилка)
execute as @e[tag=aj.cafe_cutscene.root] run function animated_java:cafe_cutscene/animations/hellnah/stop

# Делает невозможным сидение на креслах
data merge entity c5640072-f197-4947-9ee4-e681dbfb0933 {Saddle:0b}
data merge entity 81a2ede2-4f1f-4b3f-831b-f9f111cfc904 {Saddle:0b}

# Убирает "использования" у игрока
tag @a remove small_kitchen_used
tag @a remove street_paper_used

# Убирает тег из-за которого не открыть кухонную дверь ключем
tag @a remove bartender_waiting

# Снимает "отключение авто-радио"
tag @a remove NO_MORE_RADIO