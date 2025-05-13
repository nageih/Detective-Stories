# Восстанавливает хитбоксы кода
data merge entity @e[type=interaction,tag=interactable.interact.pd_code1,limit=1] {width:0.0625f}
data merge entity @e[type=interaction,tag=interactable.interact.pd_code2,limit=1] {width:0.0625f}
data merge entity @e[type=interaction,tag=interactable.interact.pd_code3,limit=1] {width:0.0625f}
data merge entity @e[type=interaction,tag=interactable.interact.pd_code4,limit=1] {width:0.0625f}
# Ставит числа в ноль
data merge entity @e[tag=aj.pantry_door.text_display.digit1,limit=1] {text:'"2"'}
data merge entity @e[tag=aj.pantry_door.text_display.digit2,limit=1] {text:'"3"'}
data merge entity @e[tag=aj.pantry_door.text_display.digit3,limit=1] {text:'"4"'}
data merge entity @e[tag=aj.pantry_door.text_display.digit4,limit=1] {text:'"5"'}
scoreboard players set *digit1 status 2
scoreboard players set *digit2 status 3
scoreboard players set *digit3 status 4
scoreboard players set *digit4 status 5
# Дверь вновь закрыта
execute as @e[tag=aj.pantry_door.root] run function animated_java:pantry_door/animations/open/stop
tag @e[tag=pd.trigger] add closed
fill -137 52 -89 -137 53 -89 iron_trapdoor[facing=west,half=bottom,open=true]