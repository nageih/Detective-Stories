# Прописана сама функция диалога
function map:dialogue/init_text {text:"С утра за рулём? Неужели вы занимаетесь какой-то доставкой?",total_symbols:59,time:1,state:2,next_dialogue:"none",db_visual:1}
execute as @a at @s anchored eyes unless entity @e[tag=text_test,type=text_display,distance=..1.5] run tellraw @s "Ты видишь этот диалог потому что ты без диалогового окна"