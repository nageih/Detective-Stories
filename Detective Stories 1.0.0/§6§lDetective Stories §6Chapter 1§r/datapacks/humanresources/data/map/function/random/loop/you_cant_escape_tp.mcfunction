tp @a -144 52 -65 -173 10
tag @a remove out_of_bounds_cooldown
execute if entity @a[tag=language.russian] run function map:dialogue/init_text {text:"Мне туда не надо.",total_symbols:17,time:1,state:1,next_dialogue:"none",db_visual:1}
execute if entity @a[tag=language.english] run function map:dialogue/init_text {text:"I don’t need to go there.",total_symbols:25,time:1,state:1,next_dialogue:"none",db_visual:1}
execute if entity @a[tag=language.chinese] run function map:dialogue/init_text {text:"我没必要去那。",total_symbols:7,time:1,state:1,next_dialogue:"none",db_visual:1}
execute if entity @a[tag=language.spanish] run function map:dialogue/init_text {text:"No necesito ir allí.",total_symbols:20,time:1,state:1,next_dialogue:"none",db_visual:1}