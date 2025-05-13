# Забирает ачивку
advancement revoke @a only map:interactable/kitchen_valve

# Кд 2 секунды
execute if score #kitchen_valve.cooldown status matches 1 run return 0
scoreboard players set #kitchen_valve.cooldown status 1
data merge entity 7cf56723-17e2-4b4d-9791-78d02266e298 {response:0b}
schedule function map:interactable/kitchen_valve/cooldown 40t

# Звук
execute at @e[tag=interactable.interact.kitchen_valve] run playsound map.interaction.kitchen_valve master @a ~ ~ ~ 0.5 1

# Текст в чат
execute if entity @a[tag=language.russian] run function map:dialogue/init_text {text:"Не поддаётся. Сколько воды здесь утекло?",total_symbols:40,time:1,state:1,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.english] run function map:dialogue/init_text {text:"It won’t budge. How much water has flowed here?",total_symbols:47,time:1,state:2,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.chinese] run function map:dialogue/init_text {text:"它根本动不了，这里到底进了多少水啊？",total_symbols:18,time:1,state:2,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.spanish] run function map:dialogue/init_text {text:"No se mueve. ¿Cuánta agua ha pasado por aquí?",total_symbols:45,time:1,state:2,next_dialogue:none,db_visual:1}