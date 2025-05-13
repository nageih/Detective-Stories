# Возврат ачивки
advancement revoke @a only map:click/lobby_timer

# Добавляет число
scoreboard players add #speedrun_timer status 1

# Проверка
execute if score #speedrun_timer status matches 2.. run scoreboard players set #speedrun_timer status 0

execute if score #speedrun_timer status matches 1 at 5e45dd08-9461-4877-9ead-dfde31599396 run playsound block.note_block.chime master @a ~ ~ ~ 1 2
execute if score #speedrun_timer status matches 1 at 5e45dd08-9461-4877-9ead-dfde31599396 run data merge entity @e[type=text_display,tag=lobby.timer.text_display,limit=1] {text:'{"translate":"map.lobby.timer","font":"minecraft:minecraft_five","color":"green"}'}

execute if score #speedrun_timer status matches 0 at 5e45dd08-9461-4877-9ead-dfde31599396 run playsound block.note_block.didgeridoo master @a ~ ~ ~ 1 0
execute if score #speedrun_timer status matches 0 at 5e45dd08-9461-4877-9ead-dfde31599396 run data merge entity @e[type=text_display,tag=lobby.timer.text_display,limit=1] {text:'{"translate":"map.lobby.timer","font":"minecraft:minecraft_five","color":"red"}'}