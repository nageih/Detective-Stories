# Рандом из двух фраз
execute store result score #td_phrase random run random value 1..2

# Проверка какое число
execute if score #td_phrase random matches 1 if entity @a[tag=language.russian] run function map:dialogue/init_text {text:"Заперто.",total_symbols:8,time:1,state:1,next_dialogue:none,db_visual:1}
execute if score #td_phrase random matches 1 if entity @a[tag=language.english] run function map:dialogue/init_text {text:"Locked.",total_symbols:7,time:1,state:1,next_dialogue:none,db_visual:1}
execute if score #td_phrase random matches 1 if entity @a[tag=language.spanish] run function map:dialogue/init_text {text:"Bloqueado.",total_symbols:10,time:1,state:1,next_dialogue:none,db_visual:1}
execute if score #td_phrase random matches 1 if entity @a[tag=language.chinese] run function map:dialogue/init_text {text:"上锁了。",total_symbols:4,time:1,state:1,next_dialogue:none,db_visual:1}
execute if score #td_phrase random matches 2 if entity @a[tag=language.russian] run function map:dialogue/init_text {text:"Не открывается.",total_symbols:15,time:1,state:1,next_dialogue:none,db_visual:1}
execute if score #td_phrase random matches 2 if entity @a[tag=language.english] run function map:dialogue/init_text {text:"The door won’t open.",total_symbols:20,time:1,state:1,next_dialogue:none,db_visual:1}
execute if score #td_phrase random matches 2 if entity @a[tag=language.chinese] run function map:dialogue/init_text {text:"这扇门不能从这里打开。",total_symbols:11,time:1,state:1,next_dialogue:none,db_visual:1}
execute if score #td_phrase random matches 2 if entity @a[tag=language.spanish] run function map:dialogue/init_text {text:"La puerta no se abre.",total_symbols:21,time:1,state:1,next_dialogue:none,db_visual:1}