# Диалог
execute if entity @a[tag=language.russian] run function map:dialogue/init_text {text:"Заметил... Кого? Что за загадки? Что здесь происходит? Никаких зацепок, я не могу ничего понять... Может, в кафе что-то будет, что даст наводки? Попробую поискать.",total_symbols:163,time:1,state:4,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.english] run function map:dialogue/init_text {text:"Seen... Who? What kind of riddles are these? What's going on? No clues, I don't understand... Maybe the café has a lead. I'll look around.",total_symbols:138,time:1,state:4,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.chinese] run function map:dialogue/init_text {text:"看到……看到什么？这些谜语到底是啥玩意啊？这儿到底怎么了？！我一点线索也没有……也许这个咖啡厅中就有我所需要的线索，我到处逛逛好了。",total_symbols:66,time:1,state:4,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.spanish] run function map:dialogue/init_text {text:"Visto... ¿Quién? ¿Qué acertijos son estos? ¿Qué pasa? No hay pistas, no entiendo... Tal vez el café tenga una pista. Voy a buscar.",total_symbols:130,time:1,state:4,next_dialogue:none,db_visual:1}
# Вешает квест
function map:quests/list/11cafe/start