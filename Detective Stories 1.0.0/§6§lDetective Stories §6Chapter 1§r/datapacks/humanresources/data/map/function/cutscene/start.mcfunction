scoreboard players add #start_cutscene timer 1
schedule function map:cutscene/start 1t

execute if score #start_cutscene timer matches 1 run gamemode spectator @a
execute if score #start_cutscene timer matches 1 run function map:ui/cb/start
execute if score #start_cutscene timer matches 1 run stopsound @a * map.music.mainmenu
execute if score #start_cutscene timer matches 1 run schedule clear map:menu/music_loop
execute if score #start_cutscene timer matches 1 as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/hide_all/play
execute if score #start_cutscene timer matches 1 as @e[tag=aj.logo.root] run function animated_java:logo/animations/appear/play
execute if score #start_cutscene timer matches 1 run title @a actionbar {"text":" "}
execute if score #start_cutscene timer matches 51 as @e[tag=aj.start_cutscene.root] run function animated_java:start_cutscene/animations/cutscene/play
execute if score #start_cutscene timer matches 1..271 as @a run spectate @e[limit=1,tag=aj.start_cutscene.camera]
execute if score #start_cutscene timer matches 1 run stopsound @a * map.ambient.windy
execute if score #start_cutscene timer matches 1 run function map:reset
execute if score #start_cutscene timer matches 1 run function map:loop/weather
execute if score #start_cutscene timer matches 1 as @e[tag=aj.car.root] run function animated_java:car/animations/drive/stop
execute if score #start_cutscene timer matches 140 as @a at @s run playsound map.random.gta master @s ~ ~ ~ 0.75 1
execute if score #start_cutscene timer matches 140 run title @a times 4 0 4
execute if score #start_cutscene timer matches 140 run title @a title {"text":"\uA013"}
execute if score #start_cutscene timer matches 161 as @a at @s run playsound map.random.gta master @s ~ ~ ~ 0.75 1
execute if score #start_cutscene timer matches 161 run title @a title {"text":"\uA013"}
execute if score #start_cutscene timer matches 190 as @a at @s run playsound map.random.gta master @s ~ ~ ~ 0.75 0.75
execute if score #start_cutscene timer matches 190 run title @a times 4 0 8
execute if score #start_cutscene timer matches 190 run title @a title {"text":"\uA013"}

execute if score #start_cutscene timer matches 150 as @e[tag=aj.car.root] run function animated_java:car/animations/drive/play
execute if score #start_cutscene timer matches 155 as @a at @s run playsound map.interaction.car_drive master @s -141 52 -63 3 1
execute if score #start_cutscene timer matches 260 as @a at @s run playsound map.interaction.car_belt master @s -142.24 52.00 -64.51 0.6 1
execute if score #start_cutscene timer matches 276 as @a at @s run playsound map.interaction.car_door_handle master @s -142.24 52.00 -64.51 0.6 1
execute if score #start_cutscene timer matches 271 run function map:ui/cb/stop
execute if score #start_cutscene timer matches 271 run gamemode adventure @a
execute if score #start_cutscene timer matches 271 run tp @a -143.38 52.0 -63.95 -137 21
execute if score #start_cutscene timer matches 277 as @a at @s run playsound map.interaction.car_door_close master @s -142.24 52.00 -64.51 0.6 1
execute if score #start_cutscene timer matches 277 run function map:quests/list/1cafe/start
execute if score #start_cutscene timer matches 277 if entity @a[tag=language.russian] run function map:dialogue/init_text {text:"Ох, не повезло же мне, проклятая метель... Придётся зайти в это кафе, может, владелец сможет мне помочь.",total_symbols:104,time:1,state:3,next_dialogue:none,db_visual:1}
execute if score #start_cutscene timer matches 277 if entity @a[tag=language.english] run function map:dialogue/init_text {text:"Ugh, I’m so unlucky, damn blizzard... I’ll have to go into this café, maybe the owner can help me.",total_symbols:98,time:1,state:3,next_dialogue:none,db_visual:1}
execute if score #start_cutscene timer matches 277 if entity @a[tag=language.spanish] run function map:dialogue/init_text {text:"Ugh, qué mala suerte, maldita tormenta de nieve... Tendré que entrar en este café, tal vez el dueño pueda ayudarme.",total_symbols:115,time:1,state:3,next_dialogue:none,db_visual:1}
execute if score #start_cutscene timer matches 277 if entity @a[tag=language.chinese] run function map:dialogue/init_text {text:"呃啊，我今天真是倒霉到家了，这该死的暴风雪……看来只好去这家咖啡厅躲躲了，也许店主能帮我一下。",total_symbols:47,time:2,state:3,next_dialogue:none,db_visual:1}
execute if score #start_cutscene timer matches 277 run function map:loop/normal_ambience
execute if score #start_cutscene timer matches 277 run scoreboard players set #time_played timer 0
execute if score #start_cutscene timer matches 277 run function map:loop/time_played
# Изменение боссбара
execute if score #start_cutscene timer matches 278 if entity @a[tag=language.russian] run bossbar set minecraft:quests name [{"text": "\uA012", "color": "#feffff","font":"minecraft:default","shadow_color":[0,0,0,0]},{"translate": "space.0","font":"space"},{"text": "", "color": "#feffff"}]
execute if score #start_cutscene timer matches 278 if entity @a[tag=language.english] run bossbar set minecraft:quests name [{"text": "\uA014", "color": "#feffff","font":"minecraft:default","shadow_color":[0,0,0,0]},{"translate": "space.0","font":"space"},{"text": "", "color": "#feffff"}]
execute if score #start_cutscene timer matches 278 if entity @a[tag=language.spanish] run bossbar set minecraft:quests name [{"text": "\uA015", "color": "#feffff","font":"minecraft:default","shadow_color":[0,0,0,0]},{"translate": "space.0","font":"space"},{"text": "", "color": "#feffff"}]
execute if score #start_cutscene timer matches 278 run bossbar set minecraft:quests_distance name ["",{"text": " ","color":"#FEFFFF","shadow_color":[0,0,0,0]},{"text":"","color":"#FEFFFF","shadow_color":[0,0,0,0]}]

execute if score #start_cutscene timer matches 278 run schedule clear map:cutscene/start
execute if score #start_cutscene timer matches 278 run scoreboard players set #start_cutscene timer 0