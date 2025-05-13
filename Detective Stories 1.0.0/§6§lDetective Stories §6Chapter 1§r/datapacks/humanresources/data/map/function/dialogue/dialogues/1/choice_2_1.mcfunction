# Прописана сама функция диалога
execute if entity @a[tag=language.russian] run function map:dialogue/init_text {text:"Оу, да. Я торопилась домой, но началась метель и мне пришлось остановиться здесь, чтобы позвонить своему парню. Чай тут, к слову, делают отличный!",total_symbols:146,time:1,state:4,next_dialogue:"dialogue/choice_appear",db_visual:3}
execute if entity @a[tag=language.english] run function map:dialogue/init_text {text:"Oh, yes. I was in a hurry to get home, but a snowstorm started, and I had to stop here to call my boyfriend. By the way, they make great tea here!",total_symbols:146,time:1,state:4,next_dialogue:"dialogue/choice_appear",db_visual:3}
execute if entity @a[tag=language.spanish] run function map:dialogue/init_text {text:"Oh, sí. Tenía prisa por llegar a casa, pero comenzó una tormenta de nieve y tuve que parar aquí para llamar a mi novio. ¡Por cierto, hacen un excelente té aquí!",total_symbols:160,time:1,state:4,next_dialogue:"dialogue/choice_appear",db_visual:3}
execute as @e[tag=aj.stranger2.root] run function animated_java:stranger2/animations/idle/stop
execute as @e[tag=aj.stranger2.root] run function animated_java:stranger2/animations/idle2/stop
schedule clear map:dialogue/dialogues/1/idle_loop
execute as @e[tag=aj.stranger2.root] run function animated_java:stranger2/animations/dialogue3/play
schedule function map:dialogue/dialogues/1/idle_loop 8.5s

scoreboard players add #s2_dialogue_count status 1
tag @e[type=interaction,limit=1,tag=db_choice] add 2chosen

execute if score #s2_dialogue_count status matches 2.. run tag @e[tag=1,tag=interactable.dialogue,type=interaction,limit=1] add already_talked
execute if score #s2_dialogue_count status matches 2.. run tag @e[tag=1,tag=interactable.dialogue,type=interaction,limit=1] remove in_dialogue
execute if score #s2_dialogue_count status matches 2.. run function map:dialogue/choice_remove