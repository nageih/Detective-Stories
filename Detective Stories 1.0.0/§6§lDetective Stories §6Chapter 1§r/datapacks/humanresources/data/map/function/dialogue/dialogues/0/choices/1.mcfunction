# Визуальное выделение
execute if entity @a[tag=language.russian] run data merge entity @n[tag=dialogue_variant,type=minecraft:text_display,limit=1] {text:'[{"text":"1. С утра за рулём? Доставщик?","color":"#90c0ff"},{"text":"\\n"},{"text":"\\n                                                "}]'}
execute if entity @a[tag=language.english] run data merge entity @n[tag=dialogue_variant,type=minecraft:text_display,limit=1] {text:'[{"text":"1. Driving since morning? A delivery driver?","color":"#90c0ff"},{"text":"\\n"},{"text":"\\n                                                "}]'}
execute if entity @a[tag=language.chinese] run data merge entity @n[tag=dialogue_variant,type=minecraft:text_display,limit=1] {text:'[{"text":"1. 你从大清早就开始开车了？所以你是快递司机喽？","color":"#90c0ff"},{"text":"\\n"},{"text":"\\n                                                "}]'}
execute if entity @a[tag=language.spanish] run data merge entity @n[tag=dialogue_variant,type=minecraft:text_display,limit=1] {text:'[{"text":"1. ¿Conduciendo desde la mañana? ¿Un repartidor?","color":"#90c0ff"},{"text":"\\n"},{"text":"\\n                                                "}]'}

execute unless entity @e[type=interaction,limit=1,tag=db_choice,nbt={interaction:{}}] run return 0
# Если игрок нажмёт ПКМ, то выполнится диалоговая функция
function map:dialogue/choice_remove
function map:dialogue/dialogues/0/choice_1