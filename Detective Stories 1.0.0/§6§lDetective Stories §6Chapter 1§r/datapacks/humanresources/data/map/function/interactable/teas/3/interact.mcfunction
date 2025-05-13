# Забирает ачивку
advancement revoke @a only map:interactable/tea_3

# Звук
execute at @e[type=interaction,limit=1,tag=interactable.interact.tea_3] run playsound map.interaction.tea master @a ~ ~ ~ 0.25 1

# Текст в чат
execute if entity @a[tag=language.russian] run function map:dialogue/init_text {text:"Чай?",total_symbols:4,time:15,state:1,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.english] run function map:dialogue/init_text {text:"Tea?",total_symbols:4,time:15,state:1,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.spanish] run function map:dialogue/init_text {text:"¿Té?",total_symbols:4,time:15,state:1,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.chinese] run function map:dialogue/init_text {text:"这是茶？",total_symbols:4,time:15,state:1,next_dialogue:none,db_visual:1}
