# Звук
execute as @a at @s run playsound map.random.telegram master @s ~ ~ ~ 0.5 1

# Звук (уже нажатия)
execute as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 0.7 1

# Анимация нажатия
execute as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/credits_telegram_pressed/play

# Текст в чат
tellraw @a ["",{"text":" \n","clickEvent":{"action":"open_url","value":"https://t.me/clownyoodexy"}},{"text":"Telegram","bold":true,"color":"#52a2eb","clickEvent":{"action":"open_url","value":"https://t.me/clownyoodexy"}},{"text":" \u2014 ","clickEvent":{"action":"open_url","value":"https://t.me/clownyoodexy"}},{"text":"https://t.me/clownyoodexy","underlined":true,"clickEvent":{"action":"open_url","value":"https://t.me/clownyoodexy"}},{"text":"\n ","clickEvent":{"action":"open_url","value":"https://t.me/clownyoodexy"}}]