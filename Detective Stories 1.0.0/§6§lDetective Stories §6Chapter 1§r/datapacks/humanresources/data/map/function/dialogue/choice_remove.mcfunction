# Убирает цикл телепортации убирания текста
schedule clear map:dialogue/choice_appear

tag @a remove db_selecting

# Убирает текст "Нажмите ПКМ чтобы продолжить" и "Выбор варианта ответа"
execute unless entity @n[type=text_display,limit=1,tag=dialogue_rmb_text,nbt={transformation:{scale:[0.0f,0.0f,0.0f]}}] run data merge entity @n[type=text_display,limit=1,tag=dialogue_rmb_text] {transformation:{scale:[0.0f,0.0f,0.0f]},start_interpolation:1,interpolation_duration:5}
execute unless entity @n[type=text_display,limit=1,tag=dialogue_variant,nbt={transformation:{scale:[0.0f,0.0f,0.0f]}}] run data merge entity @n[type=text_display,limit=1,tag=dialogue_variant] {transformation:{scale:[0.0f,0.0f,0.0f]},start_interpolation:1,interpolation_duration:5}

data remove entity @e[type=interaction,limit=1,tag=db_choice] interaction

# Ставит ширину интеракции в ноль
data merge entity @e[tag=db_choice,type=interaction,limit=1] {width:0f}