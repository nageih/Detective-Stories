# Смотрит сколько цифр, и если они ещё не совпадают, то продолжает исполнять (раз в указанное секунды)
execute unless score #symbols status = #total_symbols status run function map:dialogue/update_text_time with storage youknowwhatelseismassive:lowtaperfade

execute unless score #symbols status = #total_symbols status run scoreboard players add #symbols status 1

execute if score #symbols status = #total_symbols status run schedule function map:dialogue/remove_text_appear 20t

execute store result storage youknowwhatelseismassive:lowtaperfade symbols int 1 run scoreboard players get #symbols status

function map:dialogue/update_text2 with storage youknowwhatelseismassive:lowtaperfade

function map:dialogue/show_text with storage youknowwhatelseismassive:lowtaperfade