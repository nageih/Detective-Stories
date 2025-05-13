# Диалог
execute if entity @a[tag=language.russian] run function map:dialogue/init_text {text:"Этот ключ от какой-то двери, на бирке не разобрать. И монтировка... Думаю, мне это пригодится.",total_symbols:94,time:1,state:3,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.english] run function map:dialogue/init_text {text:"This key is for some door, but the tag is unreadable. And a crowbar... I think this will come in handy.",total_symbols:103,time:1,state:3,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.chinese] run function map:dialogue/init_text {text:"这把钥匙肯定能打开某扇门，不过上面的标签已经磨损到无法辨别了。还有一把撬棍……关键时刻也许能派上用场。",total_symbols:51,time:1,state:3,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.spanish] run function map:dialogue/init_text {text:"Esta llave es para alguna puerta, pero la etiqueta es ilegible. Y una palanca... Creo que me será útil.",total_symbols:103,time:1,state:3,next_dialogue:none,db_visual:1}
# Вешает квест
function map:quests/list/7cafe/start
# А ещё искажённую музыку по радио через 2.4 секунды
schedule function map:interactable/radio/play_whisp 2.4s
# Запускает crucified
execute as @e[tag=aj.wall_clock.root] run function animated_java:wall_clock/animations/time/stop
execute as @e[tag=aj.wall_clock.root] run function animated_java:wall_clock/animations/crucified/play
time set 14500
schedule function map:loop/crucified 4s