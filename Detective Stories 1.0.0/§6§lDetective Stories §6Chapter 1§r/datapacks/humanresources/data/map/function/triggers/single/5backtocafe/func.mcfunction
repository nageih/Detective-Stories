# Диалог
execute if entity @a[tag=language.russian] run function map:dialogue/init_text {text:"Вроде бы, всё вернулось в норму... Что это было? И для чего мне этот ключ? Нужно во всём разобраться... Начну с ключа.",total_symbols:118,time:1,state:3,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.english] run function map:dialogue/init_text {text:"It seems like everything’s back to normal... What was that? And what’s this key for? I need to figure it all out... I’ll start with the key.",total_symbols:140,time:1,state:3,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.spanish] run function map:dialogue/init_text {text:"Parece que todo volvió a la normalidad... ¿Qué fue eso? ¿Y para qué es esta llave? Necesito entenderlo todo... Empezaré con la llave.",total_symbols:133,time:1,state:3,next_dialogue:none,db_visual:1}
# Возвращает возможность открыть дверь в сарай
tag ff69afd8-0ba8-4ecc-8488-053b286de698 add interactable.interact.street_door
# Переключает на следующий квест
function map:quests/list/9gotoback/start
schedule clear map:loop/crucified
time set 14500
execute as @e[tag=aj.wall_clock.root] run function animated_java:wall_clock/animations/crucified/stop
execute as @e[tag=aj.wall_clock.root] run function animated_java:wall_clock/animations/time/play