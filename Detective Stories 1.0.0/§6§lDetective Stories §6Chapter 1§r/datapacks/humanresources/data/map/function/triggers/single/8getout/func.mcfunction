# Диалог
execute if entity @a[tag=language.russian] run function map:dialogue/init_text {text:"След от выстрелов... Так я... Выстрелил в пустоту?.. Я не понимаю что здесь творится, мне нужно сваливать!",total_symbols:106,time:1,state:3,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.english] run function map:dialogue/init_text {text:"A gunshot mark... So I... Shot into the void?.. I don’t understand what’s going on here, I need to get out of here!",total_symbols:115,time:1,state:3,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.chinese] run function map:dialogue/init_text {text:"这是枪击的痕迹……所以我……我朝着什么都没有的地方开了一枪？！这里到底发生了什么？我得赶快离开这里！",total_symbols:51,time:1,state:3,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.spanish] run function map:dialogue/init_text {text:"Marca de disparo... ¿Entonces yo... disparé al vacío?.. No entiendo qué está pasando aquí, ¡necesito irme!",total_symbols:106,time:1,state:3,next_dialogue:none,db_visual:1}
# Переключает на следующий квест
function map:quests/list/13getout/start