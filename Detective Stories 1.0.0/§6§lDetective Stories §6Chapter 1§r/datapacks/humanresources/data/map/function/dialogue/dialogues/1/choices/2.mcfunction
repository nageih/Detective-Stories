# Визуальное выделение
execute if entity @a[tag=language.russian] run data merge entity @n[tag=dialogue_variant,type=minecraft:text_display,limit=1] {text:'[{"text":"1. Где бармен?","color":"white"},{"text":"\\n"},{"text":"2. Вы куда-то направлялись?","color":"#90c0ff"},{"text":"\\n                                                "}]'}
execute if entity @a[tag=language.english] run data merge entity @n[tag=dialogue_variant,type=minecraft:text_display,limit=1] {text:'[{"text":"1. Where is the bartender?","color":"white"},{"text":"\\n"},{"text":"2. Were you heading somewhere?","color":"#90c0ff"},{"text":"\\n"}]'}
execute if entity @a[tag=language.chinese] run data merge entity @n[tag=dialogue_variant,type=minecraft:text_display,limit=1] {text:'[{"text":"1. 酒保在哪？","color":"white"},{"text":"\\n"},{"text":"2. 你要去哪？","color":"#90c0ff"},{"text":"\\n"}]'}
execute if entity @a[tag=language.spanish] run data merge entity @n[tag=dialogue_variant,type=minecraft:text_display,limit=1] {text:'[{"text":"1. ¿Dónde está el barman?","color":"white"},{"text":"\\n"},{"text":"2. ¿Te dirigías a algún lado?","color":"#90c0ff"},{"text":"\\n                                                "}]'}

execute unless entity @e[type=interaction,limit=1,tag=db_choice,tag=!2chosen,nbt={interaction:{}}] run return 0
# Если игрок нажмёт ПКМ, то выполнится диалоговая функция
function map:dialogue/choice_remove
function map:dialogue/dialogues/1/choice_2
