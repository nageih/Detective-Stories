scoreboard players add #bobicraft_turn status 1

# Вырубает Маркиплаера, если он вдруг включен
schedule clear map:most_important/markiplier/random
scoreboard players enable @a markiplier
scoreboard players set @a markiplier 0
scoreboard players set #markiplier_turn status 1

execute if score #bobicraft_turn status matches 2.. run scoreboard players set #bobicraft_turn status 0
# Выключается
scoreboard players enable @a bobicraft
scoreboard players set @a bobicraft 0
schedule clear map:most_important/bobicraft/random
bossbar set minecraft:debug_markiplier name [{"text": "\uB007", "color": "#fdffff","font":"minecraft:default","shadow_color":[0,0,0,0]},{"translate": "space.-11","font":"space"},{"text": "", "color": "#feffff"}]
execute if score #bobicraft_turn status matches 1 run return run tellraw @a ["",{"text":" \n","clickEvent":{"action":"run_command","value":"/trigger bobicraft"}},{"translate":"map.text.bobicraft","bold":true,"color":"#15df7a","clickEvent":{"action":"run_command","value":"/trigger bobicraft"}},{"translate":"map.text.bobicraft_line1","clickEvent":{"action":"run_command","value":"/trigger bobicraft"}},{"translate":"map.text.bobicraft_line2","color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger bobicraft"}},{"translate":"map.text.bobicraft_line3","clickEvent":{"action":"run_command","value":"/trigger bobicraft"}},{"text":"\n "}]

# Включается
function map:most_important/bobicraft/random
execute if score #bobicraft_turn status matches 0 run return run tellraw @a ["",{"text":" \n","clickEvent":{"action":"run_command","value":"/trigger bobicraft"}},{"translate":"map.text.bobicraft","bold":true,"color":"#15df7a","clickEvent":{"action":"run_command","value":"/trigger bobicraft"}},{"translate":"map.text.bobicraft_line1","clickEvent":{"action":"run_command","value":"/trigger bobicraft"}},{"translate":"map.text.bobicraft_line2","color":"green","clickEvent":{"action":"run_command","value":"/trigger bobicraft"}},{"translate":"map.text.bobicraft_line3","clickEvent":{"action":"run_command","value":"/trigger bobicraft"}},{"text":"\n "}]