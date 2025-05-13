# Забирает ачивку
advancement revoke @a only map:interactable/recycle_bin

# Кд 2 секунды
execute if score #recyclebin.cooldown status matches 1 run return 0
scoreboard players set #recyclebin.cooldown status 1
schedule function map:interactable/recycle_bin/cooldown 40t

# Звук
#playsound map.interaction.tv_remote master @a -145.55 53.0 -81.46 1 1

# Текст в чат
execute if entity @a[tag=language.russian] run function map:dialogue/init_text {text:"Пустое мусорное ведро.",total_symbols:23,time:1,state:1,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.english] run function map:dialogue/init_text {text:"An empty trash bin.",total_symbols:19,time:1,state:1,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.spanish] run function map:dialogue/init_text {text:"Un cubo de basura vacío.",total_symbols:24,time:1,state:1,next_dialogue:none,db_visual:1}