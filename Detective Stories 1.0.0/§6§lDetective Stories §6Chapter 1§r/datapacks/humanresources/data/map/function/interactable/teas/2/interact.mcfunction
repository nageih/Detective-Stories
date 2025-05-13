# Забирает ачивку
advancement revoke @a only map:interactable/tea_2

# Звук
execute at @e[type=interaction,limit=1,tag=interactable.interact.tea_2] run playsound map.interaction.tea master @a ~ ~ ~ 0.25 1

# Текст в чат
execute if entity @a[tag=language.russian] run function map:dialogue/init_text {text:"Зелёный чай... Обычно я предпочитаю чёрный, но если память мне не изменяет, зелёный также оставил приятное впечатление.",total_symbols:120,time:2,state:3,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.english] run function map:dialogue/init_text {text:"Green tea... I usually prefer black, but if my memory serves me right, green also left a pleasant impression.",total_symbols:109,time:2,state:3,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.spanish] run function map:dialogue/init_text {text:"Té verde... Normalmente prefiero el té negro, pero si mi memoria no me falla, el verde también dejó una buena impresión.",total_symbols:120,time:2,state:3,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.chinese] run function map:dialogue/init_text {text:"绿茶……我通常都喝红茶的，但如果我记得没错的话，绿茶喝起来也挺好喝。",total_symbols:34,time:2,state:3,next_dialogue:none,db_visual:1}
