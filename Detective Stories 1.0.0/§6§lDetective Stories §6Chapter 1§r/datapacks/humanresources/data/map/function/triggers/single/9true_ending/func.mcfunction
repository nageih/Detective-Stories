# Катсцена
function map:cutscene/true_ending
execute if entity @e[type=item_display,tag=phys.prop.box,tag=picked] run function map:physics/reset
execute if entity @e[type=item_display,tag=phys.prop.box,tag=picked] run function map:physics/box/drop
function map:dialogue/remove_text
schedule clear map:dialogue/update_text
# Убирает музыку
schedule clear map:loop/dark_ambience
stopsound @a * map.music.ambience2
# Убирает у игрока диалоги, если вдруг он такой глупенький
function map:dialogue/remove_text
# Остановка таймера прохождения
function map:loop/time_played_convert
# Убирает квесты
function map:quests/visual_disable