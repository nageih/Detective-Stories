# Забирает ачивку
advancement revoke @a only map:interactable/tv_remote

# Кд 2 секунды
execute if entity @e[type=marker,tag=tvremote.trigger,tag=cooldown] run return 0
tag @e[type=marker,tag=tvremote.trigger] add cooldown
schedule function map:interactable/tv_remote/cooldown 40t

# Звук
playsound map.interaction.tv_remote master @a -145.55 53.0 -81.46 1 1

# Текст в чат
execute if entity @a[tag=language.russian] run function map:dialogue/init_text {text:"Пульт от телевизора. Судя по всему, либо не работает телевизор, либо пульт.",total_symbols:76,time:1,state:2,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.english] run function map:dialogue/init_text {text:"A TV remote. Apparently, either the TV isn’t working or the remote.",total_symbols:67,time:1,state:2,next_dialogue:none,db_visual:1}
execute if entity @a[tag=language.spanish] run function map:dialogue/init_text {text:"Un control remoto de televisión. Aparentemente, o el televisor no funciona o el control.",total_symbols:88,time:1,state:2,next_dialogue:none,db_visual:1}