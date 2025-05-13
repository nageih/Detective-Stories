# Прописана сама функция диалога
execute if entity @a[tag=language.russian] run function map:dialogue/init_text {text:"Я не размениваюсь информацией направо и налево. Мне дали груз, я его везу, большего тебе знать и не нужно.",total_symbols:106,time:1,state:3,next_dialogue:none,db_visual:2}
execute if entity @a[tag=language.english] run function map:dialogue/init_text {text:"I don’t exchange information left and right. I was given a load, I’m delivering it, you don’t need to know more.",total_symbols:112,time:1,state:3,next_dialogue:none,db_visual:2}
execute if entity @a[tag=language.spanish] run function map:dialogue/init_text {text:"No ando compartiendo información a diestra y siniestra. Me dieron una carga, la llevo, no necesitas saber más.",total_symbols:110,time:1,state:3,next_dialogue:none,db_visual:2}
execute if entity @a[tag=language.chinese] run function map:dialogue/init_text {text:"我不会随便透露信息。有人给了我货，我就运送它，你不需要知道更多。",total_symbols:32,time:2,state:2,next_dialogue:none,db_visual:2}
execute as @e[tag=aj.stranger1.root] run function animated_java:stranger1/animations/idle/stop
execute as @e[tag=aj.stranger1.root] run function animated_java:stranger1/animations/idle2/stop
schedule clear map:dialogue/dialogues/0/idle_loop
execute as @e[tag=aj.stranger1.root] run function animated_java:stranger1/animations/dialogue2/play
schedule function map:dialogue/dialogues/0/idle_loop 6s
tag @e[tag=0,tag=interactable.dialogue,type=interaction,limit=1] add already_talked
tag @e[tag=0,tag=interactable.dialogue,type=interaction,limit=1] remove in_dialogue