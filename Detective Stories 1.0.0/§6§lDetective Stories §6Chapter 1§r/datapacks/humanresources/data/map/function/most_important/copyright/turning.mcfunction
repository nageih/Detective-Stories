# Если было исполнено по нажатию по интеракции - вернёт ачивку
advancement revoke @a only map:click/lobby_music

scoreboard players add #copyright status 1

execute if score #copyright status matches 2.. run scoreboard players set #copyright status 0
# Выключается
scoreboard players enable @a copyright
scoreboard players set @a copyright 0
scoreboard players set #streamermode status 1
execute if score #copyright status matches 1 run return run tellraw @a ["",{"text":" \n","clickEvent":{"action":"run_command","value":"/trigger copyright"}},{"translate":"map.text.licence_music","bold":true,"color":"#1568e4","clickEvent":{"action":"run_command","value":"/trigger copyright"}},{"translate":"map.text.licence_music_line1","clickEvent":{"action":"run_command","value":"/trigger copyright"}},{"translate":"map.text.licence_music_line2_1","color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger copyright"}},{"translate":"map.text.licence_music_line3_1","clickEvent":{"action":"run_command","value":"/trigger copyright"}},{"text":"\n "}]

# Включается
scoreboard players set #streamermode status 0
execute if score #copyright status matches 0 run return run tellraw @a ["",{"text":" \n","clickEvent":{"action":"run_command","value":"/trigger copyright"}},{"translate":"map.text.licence_music","bold":true,"color":"#1568e4","clickEvent":{"action":"run_command","value":"/trigger copyright"}},{"translate":"map.text.licence_music_line1","clickEvent":{"action":"run_command","value":"/trigger copyright"}},{"translate":"map.text.licence_music_line2_2","color":"green","clickEvent":{"action":"run_command","value":"/trigger copyright"}},{"translate":"map.text.licence_music_line3_2","clickEvent":{"action":"run_command","value":"/trigger copyright"}},{"text":"\n "}]