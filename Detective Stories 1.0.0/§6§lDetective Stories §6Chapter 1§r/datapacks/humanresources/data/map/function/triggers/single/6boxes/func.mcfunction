# Диалог
execute if entity @a[tag=language.russian] run function map:dialogue/init_text {text:"Дверь открыта, но путь преграждён коробками. Попробую их подвинуть.",total_symbols:67,time:1,state:3,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.english] run function map:dialogue/init_text {text:"The door is open, but the way is blocked by boxes. I’ll try to move them.",total_symbols:73,time:1,state:3,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.chinese] run function map:dialogue/init_text {text:"这扇门是开着的，但是路被箱子堵死了。我看看能不能把它们搬一边去。",total_symbols:29,time:1,state:3,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.spanish] run function map:dialogue/init_text {text:"La puerta está abierta, pero el camino está bloqueado por cajas. Intentaré moverlas.",total_symbols:83,time:1,state:3,next_dialogue:none,db_visual:1}
# Переключает на следующий квест
function map:quests/list/10moveboxes/start
