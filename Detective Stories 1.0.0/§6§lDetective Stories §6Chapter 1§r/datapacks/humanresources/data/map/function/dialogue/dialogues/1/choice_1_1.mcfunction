# Прописана сама функция диалога
execute if entity @a[tag=language.russian] run function map:dialogue/init_text {text:"Бармен? Он ушёл минут пять назад. Сказал, что у него там дела на кухне. Может, он что-то готовит, но зачем? Время довольно позднее...",total_symbols:133,time:1,state:4,next_dialogue:"dialogue/choice_appear",db_visual:3}
execute if entity @a[tag=language.english] run function map:dialogue/init_text {text:"The bartender? He left about five minutes ago. Said he had some things to do in the kitchen. Maybe he’s preparing something, but why? It’s pretty late...",total_symbols:153,time:1,state:4,next_dialogue:"dialogue/choice_appear",db_visual:3}
execute if entity @a[tag=language.chinese] run function map:dialogue/init_text {text:"酒保？他五分钟之前走了，走之前跟我们说他要去餐厅处理点事。说不定他在准备什么，但是很奇怪啊，毕竟都这么晚了……",total_symbols:55,time:1,state:4,next_dialogue:"dialogue/choice_appear",db_visual:3}
execute if entity @a[tag=language.spanish] run function map:dialogue/init_text {text:"¿El barman? Se fue hace unos cinco minutos. Dijo que tenía que hacer algo en la cocina. Tal vez esté preparando algo, pero ¿por qué? Ya es bastante tarde...",total_symbols:156,time:1,state:4,next_dialogue:"dialogue/choice_appear",db_visual:3}
execute as @e[tag=aj.stranger2.root] run function animated_java:stranger2/animations/idle/stop
execute as @e[tag=aj.stranger2.root] run function animated_java:stranger2/animations/idle2/stop
schedule clear map:dialogue/dialogues/1/idle_loop
execute as @e[tag=aj.stranger2.root] run function animated_java:stranger2/animations/dialogue2/play
schedule function map:dialogue/dialogues/1/idle_loop 7s

scoreboard players add #s2_dialogue_count status 1
tag @e[type=interaction,limit=1,tag=db_choice] add 1chosen

execute if score #s2_dialogue_count status matches 2.. run tag @e[tag=1,tag=interactable.dialogue,type=interaction,limit=1] add already_talked
execute if score #s2_dialogue_count status matches 2.. run tag @e[tag=1,tag=interactable.dialogue,type=interaction,limit=1] remove in_dialogue
execute if score #s2_dialogue_count status matches 2.. run function map:dialogue/choice_remove