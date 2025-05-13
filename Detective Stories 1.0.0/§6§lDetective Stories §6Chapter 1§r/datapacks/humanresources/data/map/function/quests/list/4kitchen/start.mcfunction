# Меняет квест справа сверху
bossbar set minecraft:quests_name name [{"translate": "map.quests.4kitchen", "color": "#feffff","shadow_color":[0,0,0,0],"font":"minecraft:default_ascent"},{"translate": "space.0","font":"space"}]
schedule clear map:quests/loop_hint
bossbar set minecraft:quests_distance name ["",{"translate":"map.quests.gettothekitchen","color":"#FEFFFF","shadow_color":[0,0,0,0]},{"text":"","color":"#FEFFFF","shadow_color":[0,0,0,0]}]

# Убирает тег что дверь не открыть
tag @a remove bartender_waiting

# Диалог
execute if entity @a[tag=language.russian] run function map:dialogue/init_text {text:"Странно, бармен всё ещё не объявился. Попробую его поискать, может, он чем-то занят и просто не выходит.",total_symbols:104,time:1,state:3,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.english] run function map:dialogue/init_text {text:"Strange, the bartender still hasn’t shown up. I’ll try to look for him; maybe he’s busy with something and just isn’t coming out.",total_symbols:129,time:1,state:3,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.spanish] run function map:dialogue/init_text {text:"Es extraño, el barman aún no ha aparecido. Intentaré buscarlo, quizá esté ocupado con algo y simplemente no salga.",total_symbols:113,time:1,state:3,next_dialogue:none,db_visual:1}

# Обновление "до цели осталось ? блоков"
spawnpoint @a -131 51 -82

# Звук квеста
playsound ui.toast.in master @a ~ ~ ~ 1 1

# Запускает триггер
data merge entity @e[type=marker,tag=2kitchen,limit=1] {data:{trigger:1b,used:0b}}

# Обновление боссбаров на всякий случай
function map:quests/visual_update