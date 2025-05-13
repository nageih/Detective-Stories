# Меняет квест справа сверху
bossbar set minecraft:quests_name name [{"translate": "map.quests.2bartender", "color": "#feffff","shadow_color":[0,0,0,0],"font":"minecraft:default_ascent"},{"translate": "space.0","font":"space"}]

# Обновление "до цели осталось ? блоков"
spawnpoint @a -131 52 -82

# Включает триггер
#

# Звук квеста
playsound ui.toast.in master @a ~ ~ ~ 1 1

# Обновление боссбаров на всякий случай
function map:quests/visual_update