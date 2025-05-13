# Прописана сама функция диалога
execute if entity @a[tag=language.russian] run function map:dialogue/init_text {text:"Вы тоже тут застряли? Этот снег пошёл так неожиданно...",total_symbols:55,time:1,state:2,next_dialogue:"dialogue/choice_appear",db_visual:3}
execute if entity @a[tag=language.english] run function map:dialogue/init_text {text:"Are you stuck here too? This snow came out of nowhere...",total_symbols:56,time:1,state:2,next_dialogue:"dialogue/choice_appear",db_visual:3}
execute if entity @a[tag=language.spanish] run function map:dialogue/init_text {text:"¿También estás atrapado aquí? Esta nieve vino de la nada...",total_symbols:59,time:1,state:2,next_dialogue:"dialogue/choice_appear",db_visual:3}
function map:dialogue/dialogues/1/player_check
execute as @e[tag=aj.stranger2.root] run function animated_java:stranger2/animations/idle/stop
execute as @e[tag=aj.stranger2.root] run function animated_java:stranger2/animations/idle2/stop
schedule clear map:dialogue/dialogues/1/idle_loop
execute as @e[tag=aj.stranger2.root] run function animated_java:stranger2/animations/dialogue1/play
schedule function map:dialogue/dialogues/1/idle_loop 73t
tag @s add in_dialogue
data merge entity @s {width:0f}