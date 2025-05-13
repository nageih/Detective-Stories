# Меняет квест справа сверху
bossbar set minecraft:quests_name name [{"translate": "map.quests.1cafe", "color": "#feffff","shadow_color":[0,0,0,0],"font":"minecraft:default_ascent"},{"translate": "space.0","font":"space"}]

# Обновление "до цели осталось ? блоков"
spawnpoint @a -146 53 -76

# Обновление боссбаров на всякий случай
function map:quests/visual_update

# Звук квеста
playsound ui.toast.in master @a ~ ~ ~ 1 1

# Включает все необходимое
execute as @e[tag=aj.stranger1.root] run function animated_java:stranger1/animations/disappear/stop
execute as @e[tag=aj.stranger2.root] run function animated_java:stranger2/animations/disappear/stop
function map:dialogue/dialogues/0/idle_loop
function map:dialogue/dialogues/1/idle_loop