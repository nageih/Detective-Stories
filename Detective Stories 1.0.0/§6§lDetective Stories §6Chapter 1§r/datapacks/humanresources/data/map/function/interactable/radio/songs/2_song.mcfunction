# Достижение
execute unless score #music_advancement_song2 status matches 1 run scoreboard players set #music_advancement_song2 status 1
# Если человек включил авторские права
execute if score #streamermode status matches 1 at @e[tag=aj.radio.root] run playsound minecraft:map.music.radio.alliwantforchristmas_ncs master @a ~ ~ ~ 1 1
execute if score #streamermode status matches 1 run schedule function map:interactable/radio/random 238s
execute if score #streamermode status matches 1 run return 0
# Если авторских прав нет
execute unless score #streamermode status matches 1 at @e[tag=aj.radio.root] run playsound minecraft:map.music.radio.alliwantforchristmas master @a ~ ~ ~ 1 1
execute unless score #streamermode status matches 1 run schedule function map:interactable/radio/random 240s
