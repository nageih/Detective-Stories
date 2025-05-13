# Ставит текст и сколько букв в тексте в storage и скорборд
$data merge storage youknowwhatelseismassive:lowtaperfade {text:"$(text)",total_symbols:$(total_symbols),time:$(time),state:$(state),next_dialogue:"$(next_dialogue)"}
$scoreboard players set #total_symbols status $(total_symbols)
#$scoreboard players set #select_variants status $(select_variants)

# Какое диалоговое окно вылезет
$scoreboard players set #db_visual status $(db_visual)
# Главный герой
execute if score #db_visual status matches 1 run item replace entity @n[tag=dialogue_box,type=minecraft:item_display,limit=1] container.0 with yellow_dye[custom_model_data={floats:[10000f]}]
# Красивый мужчина
execute if score #db_visual status matches 2 run item replace entity @n[tag=dialogue_box,type=minecraft:item_display,limit=1] container.0 with yellow_dye[custom_model_data={floats:[10001f]}]
# ЖЕНЩИНА
execute if score #db_visual status matches 3 run item replace entity @n[tag=dialogue_box,type=minecraft:item_display,limit=1] container.0 with yellow_dye[custom_model_data={floats:[10002f]}]

# Обнуляет скорборд
scoreboard players set #symbols status 0

# Запускает цикл отображения диалогового окна
function map:dialogue/loop

# Обнуление (на всякий случай)
data merge entity @n[type=item_display,limit=1,tag=dialogue_box] {transformation:{scale:[0.0f,0.0f,0.0f]}}
data merge entity @n[type=text_display,limit=1,tag=text_test] {transformation:{scale:[0.0f,0.0f,0.0f]}}
schedule clear map:dialogue/remove_text_appear
# Очищает текст дисплей от предыдущего текста
data merge entity @n[tag=text_test,type=minecraft:text_display,limit=1] {text:'[{"text":" "},{"text":" "}]'}

# Анимация появления диалогового окна
data merge entity @n[type=item_display,limit=1,tag=dialogue_box] {transformation:{scale:[0.25f,0.25f,0.25f]},start_interpolation:1,interpolation_duration:2}
data merge entity @n[type=text_display,limit=1,tag=text_test] {transformation:{scale:[0.0625f,0.0625f,0.0625f]},start_interpolation:1,interpolation_duration:2}

# Текст начинает набираться лишь спустя полсекунды
schedule function map:dialogue/update_text 10t