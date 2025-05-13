# Прописана сама функция диалога
execute if entity @a[tag=language.russian] run function map:dialogue/init_text {text:"Что-то странное тут сегодня... За рулём с утра, остановился размяться. Бармена до сих пор нет. Да и дорога пустая. Какое-то это всё неправильное.",total_symbols:145,time:1,state:4,next_dialogue:"dialogue/choice_appear",db_visual:2}
execute if entity @a[tag=language.english] run function map:dialogue/init_text {text:"Something feels off today... Driving since morning, stopped to stretch. The bartender still isn’t here. And the road is empty. Everything just feels wrong.",total_symbols:155,time:1,state:4,next_dialogue:"dialogue/choice_appear",db_visual:2}
execute if entity @a[tag=language.english] run function map:dialogue/init_text {text:"今天我感觉有点不对劲……我从大清早就开车去送货，之后停车找了个地方歇歇脚。目前为止我还没见到酒保，而且路上空无一物……真的，我感觉哪哪都不对劲。",total_symbols:72,time:1,state:4,next_dialogue:"dialogue/choice_appear",db_visual:2}
execute if entity @a[tag=language.spanish] run function map:dialogue/init_text {text:"Algo raro hoy... Conduciendo desde la mañana, me detuve a estirarme. El barman aún no está. Y la carretera está vacía. Todo parece raro.",total_symbols:136,time:1,state:4,next_dialogue:"dialogue/choice_appear",db_visual:2}
function map:dialogue/dialogues/0/player_check
execute as @e[tag=aj.stranger1.root] run function animated_java:stranger1/animations/idle/stop
execute as @e[tag=aj.stranger1.root] run function animated_java:stranger1/animations/idle2/stop
schedule clear map:dialogue/dialogues/0/idle_loop
execute as @e[tag=aj.stranger1.root] run function animated_java:stranger1/animations/dialogue1/play
schedule function map:dialogue/dialogues/0/idle_loop 7.8s
tag @s add in_dialogue
data merge entity @s {width:0f}
