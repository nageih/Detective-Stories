# Меняет квест справа сверху
bossbar set minecraft:quests_name name [{"translate": "map.quests.9gotoback", "color": "#feffff","shadow_color":[0,0,0,0],"font":"minecraft:default_ascent"},{"translate": "space.0","font":"space"}]

# Обновление "до цели осталось ? блоков"
spawnpoint @a -147 52 -100

# Звук квеста
playsound ui.toast.in master @a ~ ~ ~ 1 1

# Запускает триггер
data merge entity @e[type=marker,tag=6boxes,limit=1] {data:{trigger:1b,used:0b}} 

# Обновление боссбаров на всякий случай
function map:quests/visual_update