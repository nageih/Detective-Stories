# Диалог
execute if entity @a[tag=language.russian] run function map:dialogue/init_text {text:"Куда... Куда все пропали? Странно всё это... Но нужно всё-таки найти бармена. Попробую поискать что-нибудь на кухне.",total_symbols:116,time:1,state:3,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.english] run function map:dialogue/init_text {text:"Where... Where did everyone go? This is strange... But I still need to find the bartender. I’ll try looking for something in the kitchen.",total_symbols:137,time:1,state:3,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.chinese] run function map:dialogue/init_text {text:"到底……到底他们都去哪了？这实在太奇怪了……但我还要找酒保，也许我应该去后厨看看。",total_symbols:41,time:1,state:3,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.spanish] run function map:dialogue/init_text {text:"¿Dónde... dónde se fue todos? Esto es extraño... Pero aún necesito encontrar al barman. Intentaré buscar algo en la cocina.",total_symbols:123,time:1,state:3,next_dialogue:none,db_visual:1}
# Переключает на следующий квест
function map:quests/list/6kitchen/start

# Вот теперь игрок может потыкать бумажку
data merge entity af82059d-f3ea-4e5e-aa07-cef38022b3e0 {width:0.375f}
tag @e[tag=small_kitchen,tag=interactable.prop.paper,type=item_display,limit=1] add interactable
tag af82059d-f3ea-4e5e-aa07-cef38022b3e0 add interactable

# Музыка меняется
schedule clear map:loop/normal_ambience
stopsound @a * map.music.ambience1
function map:loop/dark_ambience
# Убирает хитбоксы диалогов
data merge entity 80d73490-6e26-440a-9ff3-65df5734a073 {width:0f}
data merge entity 2f8dcf37-0c28-4d26-81c4-53ed08175581 {width:0f}
# Делает возможность сидеть на креслах (где пропали непеси)
data merge entity c5640072-f197-4947-9ee4-e681dbfb0933 {Saddle:1b}
data merge entity 81a2ede2-4f1f-4b3f-831b-f9f111cfc904 {Saddle:1b}
