# Диалог
execute if entity @a[tag=language.russian] run function map:dialogue/init_text {text:"Хмм... Я думал здесь не будет никого кроме меня. Правда, я не вижу бармена за стойкой. Надо бы узнать, где он.",total_symbols:112,time:1,state:3,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.english] run function map:dialogue/init_text {text:"Hmm... I thought I’d be the only one here. But I don’t see the bartender at the counter. I should find out where he is.",total_symbols:119,time:1,state:3,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.chinese] run function map:dialogue/init_text {text:"嗯……我觉得这里就只有我一个人，毕竟我没在柜台那看到酒保的身影。我应该去找找他。",total_symbols:40,time:1,state:3,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.spanish] run function map:dialogue/init_text {text:"Hmm... Pensé que estaría solo aquí. Pero no veo al barman en la barra. Debería averiguar dónde está.",total_symbols:100,time:1,state:3,next_dialogue:none,db_visual:1}
# Выдаёт игроку тег то что он не может открыть пока что кухонную дверь
tag @a add bartender_waiting
# Переключает на следующий квест
function map:quests/list/2bartender/start