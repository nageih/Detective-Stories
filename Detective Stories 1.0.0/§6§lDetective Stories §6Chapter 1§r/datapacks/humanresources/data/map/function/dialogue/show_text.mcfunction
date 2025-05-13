# Заменяет дату
#$data merge entity @n[tag=text_test,type=minecraft:text_display,limit=1] {$(text)}

$data merge entity @n[tag=text_test,type=minecraft:text_display,limit=1] {text:'[{"text":"$(temp_text)","color":"#FFFFFF"},{"text":" 뀃","shadow_color":[0,0,0,0]}]'}

