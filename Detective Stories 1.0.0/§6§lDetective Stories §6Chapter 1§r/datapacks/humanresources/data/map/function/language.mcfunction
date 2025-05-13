# Обновление языка на всей карте
execute as @e[tag=translate_text,type=text_display] run data merge entity @s {transformation:{translation:[0.01f,0.0f,0.0f]}}
execute as @e[tag=translate_text,type=text_display] run data merge entity @s {transformation:{translation:[0.0f,0.0f,0.0f]}}