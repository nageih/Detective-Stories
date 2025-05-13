# Диалог
execute if entity @a[tag=language.russian] run function map:dialogue/init_text {text:"Никто среди посетителей не знает, где бармен. Что-ж, подожду пока немного, вдруг он объявится...",total_symbols:96,time:1,state:3,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.english] run function map:dialogue/init_text {text:"None of the patrons know where the bartender is. Well, I’ll wait a little while, maybe he’ll show up...",total_symbols:103,time:1,state:3,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.spanish] run function map:dialogue/init_text {text:"Ninguno de los clientes sabe dónde está el barman. Bueno, esperaré un poco, tal vez aparezca...",total_symbols:95,time:1,state:3,next_dialogue:none,db_visual:1}
# Квест "подождать"
function map:quests/list/3waiting/start
# Переключает на следующий квест
schedule function map:quests/list/4kitchen/start 90s