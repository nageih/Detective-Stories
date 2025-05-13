# Диалог
execute if entity @a[tag=language.russian] run function map:dialogue/init_text {text:"Что это, нахер, было!? Кто издал этот крик? И кто наблюдал за мной? Я... Я ведь выстрелил... Надо осмотреть это место!",total_symbols:118,time:1,state:3,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.english] run function map:dialogue/init_text {text:"What the hell was that!? Who let out that scream? And who was watching me? I... I did shoot... I need to check this place out!",total_symbols:126,time:1,state:3,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.chinese] run function map:dialogue/init_text {text:"那他妈的是啥？！那声惨叫声是谁发出来的？！而，而且到底是谁在监视我？我……我的的确确看到了，我得把这块地方好好检查一下！",total_symbols:60,time:1,state:3,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.spanish] run function map:dialogue/init_text {text:"¡¿Qué diablos fue eso!? ¿Quién soltó ese grito? ¿Y quién me estaba observando? Yo... Yo disparé... ¡Debo revisar este lugar!",total_symbols:124,time:1,state:3,next_dialogue:none,db_visual:1}
# Вешает квест
function map:quests/list/12whathappened/start
# Появляются следы от пуль
item replace entity @e[tag=shot_marks,type=item_display,limit=1] container.0 with yellow_dye[custom_model_data={floats:[85f]}]