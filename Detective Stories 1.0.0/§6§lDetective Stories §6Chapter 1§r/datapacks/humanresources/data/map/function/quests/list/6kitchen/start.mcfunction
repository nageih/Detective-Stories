# Меняет квест справа сверху
bossbar set minecraft:quests_name name [{"translate": "map.quests.6kitchen", "color": "#feffff","shadow_color":[0,0,0,0],"font":"minecraft:default_ascent"},{"translate": "space.0","font":"space"}]
schedule clear map:quests/loop_hint
bossbar set minecraft:quests_distance name ["",{"text":" ","color":"#FEFFFF","shadow_color":[0,0,0,0]},{"text":"","color":"#FEFFFF","shadow_color":[0,0,0,0]}]

# Обновление "до цели осталось ? блоков"
spawnpoint @a -131 51 -82

# Звук квеста
playsound ui.toast.in master @a ~ ~ ~ 1 1

# Обновление боссбаров на всякий случай
function map:quests/visual_update