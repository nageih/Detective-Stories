# Диалог
execute if entity @a[tag=language.russian] run function map:dialogue/init_text {text:"Какая-то загадка? Мне нужно разгадать какой-то код? О каких часах идёт речь? И что значат эти слова *Мои часы - твой выход*? Нужно разобраться...",total_symbols:147,time:1,state:4,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.english] run function map:dialogue/init_text {text:"Some kind of riddle? Do I need to figure out a code? What clock is it referring to? And what do these words mean: *My watch is your way out*? I need to figure this out...",total_symbols:170,time:1,state:4,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.chinese] run function map:dialogue/init_text {text:"这算是某种谜语吗？难道我还要猜密码？而且它指的“钟”又是什么意思？而且这句“我的钟是你摆脱困境的办法”……？看来我必须得弄清楚这到底是怎么一回事了……",total_symbols:75,time:1,state:4,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.spanish] run function map:dialogue/init_text {text:"¿Algún tipo de acertijo? ¿Necesito descifrar un código? ¿De qué reloj se trata? ¿Y qué significan estas palabras: *Mi reloj es tu salida*? Necesito averiguarlo...",total_symbols:162,time:1,state:4,next_dialogue:none,db_visual:1}
# Делает возможным ввод кода
data merge entity @e[type=interaction,tag=interactable.interact.pd_code1,limit=1] {width:0.0625f}
data merge entity @e[type=interaction,tag=interactable.interact.pd_code2,limit=1] {width:0.0625f}
data merge entity @e[type=interaction,tag=interactable.interact.pd_code3,limit=1] {width:0.0625f}
data merge entity @e[type=interaction,tag=interactable.interact.pd_code4,limit=1] {width:0.0625f}
# Вешает квест
function map:quests/list/6kitchen/start