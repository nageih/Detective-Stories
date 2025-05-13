# Забирает ачивку
advancement revoke @a only map:interactable/remove_dialogue

# Убирает цикл телепортации убирания текста
execute if entity @a[tag=!db_selecting] run schedule clear map:dialogue/remove_text_appear

# Убирает текст "Нажмите ПКМ чтобы продолжить" и "Выбор варианта ответа"
execute unless entity @n[type=text_display,limit=1,tag=dialogue_rmb_text,nbt={transformation:{scale:[0.0f,0.0f,0.0f]}}] run data merge entity @n[type=text_display,limit=1,tag=dialogue_rmb_text] {transformation:{scale:[0.0f,0.0f,0.0f]},start_interpolation:1,interpolation_duration:5}
execute unless entity @n[type=text_display,limit=1,tag=dialogue_variant,nbt={transformation:{scale:[0.0f,0.0f,0.0f]}}] run data merge entity @n[type=text_display,limit=1,tag=dialogue_variant] {transformation:{scale:[0.0f,0.0f,0.0f]},start_interpolation:1,interpolation_duration:5}

# Ставит ширину интеракции в ноль
data merge entity @e[tag=db_remove,type=interaction,limit=1] {width:0f}

execute unless data storage youknowwhatelseismassive:lowtaperfade {next_dialogue:none} run return run function map:dialogue/next_text with storage youknowwhatelseismassive:lowtaperfade

# Текст и диалоговые окна красиво пропадают
execute unless entity @n[type=text_display,limit=1,tag=text_test,nbt={transformation:{scale:[0.0f,0.0f,0.0f]}}] run data merge entity @n[type=text_display,limit=1,tag=text_test] {transformation:{scale:[0.0f,0.0f,0.0f]},start_interpolation:1,interpolation_duration:5}
execute unless entity @n[type=text_display,limit=1,tag=dialogue_box,nbt={transformation:{scale:[0.0f,0.0f,0.0f]}}] run data merge entity @n[type=item_display,limit=1,tag=dialogue_box] {transformation:{scale:[0.0f,0.0f,0.0f]},start_interpolation:1,interpolation_duration:5}
execute unless entity @n[type=text_display,limit=1,tag=dialogue_variant,nbt={transformation:{scale:[0.0f,0.0f,0.0f]}}] run data merge entity @n[type=item_display,limit=1,tag=dialogue_variant] {transformation:{scale:[0.0f,0.0f,0.0f]},start_interpolation:1,interpolation_duration:5}

# Убирает цикл телепортации диалогового окна, если диалог окончен
schedule clear map:dialogue/loop