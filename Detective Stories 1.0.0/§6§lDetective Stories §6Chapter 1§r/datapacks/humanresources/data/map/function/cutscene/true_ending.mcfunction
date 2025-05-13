gamemode spectator @a
execute as @a run spectate @e[tag=aj.ending_cutscene.camera,limit=1,type=item_display]
execute as @e[tag=aj.ending_cutscene.root] run function animated_java:ending_cutscene/animations/true_ending/play
execute as @e[tag=aj.true_ending.root] run function animated_java:true_ending/animations/cutscene/play
function map:ui/cb/start

schedule function map:cutscene/true_ending_end 34s

schedule clear map:loop/weather
stopsound @a
execute as @a at @s run playsound map.ambient.windy_inside master @s ~ ~ ~ 0.5 1
execute as @a at @s run playsound map.music.true_ending master @s ~ ~ ~ 0.2 1