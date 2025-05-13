# Диалог
execute if entity @a[tag=language.russian] run function map:dialogue/init_text {text:"Что? Кто закрыл дверь? Надо выяснить.",total_symbols:37,time:1,state:1,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.english] run function map:dialogue/init_text {text:"What? Who closed the door? I need to find out.",total_symbols:46,time:1,state:1,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.chinese] run function map:dialogue/init_text {text:"啊？谁把门关了？我得去看看。",total_symbols:14,time:1,state:1,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.spanish] run function map:dialogue/init_text {text:"¿Qué? ¿Quién cerró la puerta? Debo averiguarlo.",total_symbols:47,time:1,state:2,next_dialogue:none,db_visual:1}
# Делает хитбокс бумажке в 0, чтобы игроку пришлось выйти из кухни (и ещё чтобы код не мог ввести)
data merge entity af82059d-f3ea-4e5e-aa07-cef38022b3e0 {width:0.0f}
tag @e[tag=small_kitchen,tag=interactable.prop.paper,type=item_display,limit=1] remove interactable
tag af82059d-f3ea-4e5e-aa07-cef38022b3e0 remove interactable
data merge entity @e[type=interaction,tag=interactable.interact.pd_code1,limit=1] {width:0.0f}
data merge entity @e[type=interaction,tag=interactable.interact.pd_code2,limit=1] {width:0.0f}
data merge entity @e[type=interaction,tag=interactable.interact.pd_code3,limit=1] {width:0.0f}
data merge entity @e[type=interaction,tag=interactable.interact.pd_code4,limit=1] {width:0.0f}
# Переключает на следующий квест
function map:quests/list/5something/start
# Звук бега
playsound map.random.runaway master @a -135 52 -80 3 1
playsound map.random.runaway master @a -135 52 -80 3 1
# Люди пропали
schedule function map:triggers/single/2kitchen/disappear 10t
# Дверь закрывается
advancement grant @a only map:interactable/kitchen_door