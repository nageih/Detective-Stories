# Забирает ачивку
advancement revoke @a only map:interactable/tea_1

# Звук
execute at @e[type=interaction,limit=1,tag=interactable.interact.tea_1] run playsound map.interaction.tea master @a ~ ~ ~ 0.25 1

# Текст в чат
execute if entity @a[tag=language.russian] run function map:dialogue/init_text {text:"Чёрный чай. Один из моих любимых сортов.",total_symbols:41,time:2,state:1,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.english] run function map:dialogue/init_text {text:"Black tea. One of my favorite varieties.",total_symbols:40,time:2,state:1,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.chinese] run function map:dialogue/init_text {text:"这是红茶，也算我的半个心头好了。",total_symbols:16,time:2,state:1,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.spanish] run function map:dialogue/init_text {text:"Té negro. Uno de mis tipos favoritos.",total_symbols:37,time:2,state:1,next_dialogue:none,db_visual:1}