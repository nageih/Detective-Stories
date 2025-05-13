# Меняет квест справа сверху
bossbar set minecraft:quests_name name [{"translate": "map.quests.13getout", "color": "#feffff","shadow_color":[0,0,0,0],"font":"minecraft:default_ascent"},{"translate": "space.0","font":"space"}]

# Обновление "до цели осталось ? блоков"
spawnpoint @a -144 53 -65

# Запрет скрытой концовки
execute as @e[tag=9true_ending,type=marker,limit=1] run data merge entity @s {data:{trigger:1b,used:1b}}

# Звук квеста
playsound ui.toast.in master @a ~ ~ ~ 1 1

# Запускает триггер
data merge entity @e[type=marker,tag=9ending,limit=1] {data:{trigger:1b,used:0b}} 

# Обновление боссбаров на всякий случай
function map:quests/visual_update