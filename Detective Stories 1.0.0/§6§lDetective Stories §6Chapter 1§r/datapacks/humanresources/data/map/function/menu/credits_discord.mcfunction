# Звук
execute as @a at @s run playsound map.random.discord master @s ~ ~ ~ 0.5 1

# Звук (уже нажатия)
execute as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 0.7 1

# Анимация нажатия
execute as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/credits_discord_pressed/play

# Текст в чат
tellraw @a ["",{"text":" \n","clickEvent":{"action":"open_url","value":"https://discord.com/invite/zp7Ga5T77E"}},{"text":"Discord","bold":true,"color":"#5662F6","clickEvent":{"action":"open_url","value":"https://discord.com/invite/zp7Ga5T77E"}},{"text":" \u2014 ","clickEvent":{"action":"open_url","value":"https://discord.com/invite/zp7Ga5T77E"}},{"text":"https://discord.com/invite/zp7Ga5T77E","underlined":true,"clickEvent":{"action":"open_url","value":"https://discord.com/invite/zp7Ga5T77E"}},{"text":"\n ","clickEvent":{"action":"open_url","value":"https://discord.com/invite/zp7Ga5T77E"}}]