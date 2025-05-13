# Диалог
execute if entity @a[tag=language.russian] run function map:dialogue/init_text {text:"Заметил... Кого? Что за загадки? Что здесь происходит? Никаких зацепок, я не могу ничего понять... Может, в кафе что-то будет, что даст наводки? Попробую поискать.",total_symbols:163,time:1,state:4,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.english] run function map:dialogue/init_text {text:"Seen... Who? What kind of riddles are these? What's going on? No clues, I don't understand... Maybe the café has a lead. I'll look around.",total_symbols:138,time:1,state:4,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.spanish] run function map:dialogue/init_text {text:"Visto... ¿Quién? ¿Qué acertijos son estos? ¿Qué pasa? No hay pistas, no entiendo... Tal vez el café tenga una pista. Voy a buscar.",total_symbols:130,time:1,state:4,next_dialogue:none,db_visual:1}
# Вешает квест
function map:quests/list/11cafe/start