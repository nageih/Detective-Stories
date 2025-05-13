# Диалог
execute if entity @a[tag=language.russian] run function map:dialogue/init_text {text:"Что происходит!? Что со мной? Нужно срочно вернуться обратно в кафе!",total_symbols:68,time:1,state:2,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.english] run function map:dialogue/init_text {text:"What’s happening!? What’s wrong with me? I need to get back to the café right now!",total_symbols:82,time:1,state:2,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.chinese] run function map:dialogue/init_text {text:"怎么回事？！我……我到底怎么了？我得赶快跑回咖啡厅才行！",total_symbols:28,time:1,state:2,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.spanish] run function map:dialogue/init_text {text:"¿¡Qué está pasando!? ¿Qué me sucede? ¡Necesito volver al café ahora mismo!",total_symbols:74,time:1,state:2,next_dialogue:none,db_visual:1}
# Убирает возможность открыть в этот момент дверь в сарай
tag ff69afd8-0ba8-4ecc-8488-053b286de698 remove interactable.interact.street_door
# Переключает на следующий квест
function map:quests/list/8backtocafe/start
schedule clear map:triggers/execute/cafe_door/in_loop
schedule clear map:triggers/execute/cafe_door/out_loop
schedule function map:triggers/execute/cafe_door/in_loop 100t
schedule function map:triggers/execute/cafe_door/out_loop 110t