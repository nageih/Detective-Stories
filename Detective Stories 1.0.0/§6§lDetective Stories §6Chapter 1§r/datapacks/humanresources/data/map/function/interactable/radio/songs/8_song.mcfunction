# Если человек включил авторские права
execute if score #streamermode status matches 1 at @e[tag=aj.radio.root] run playsound minecraft:map.music.radio.omori master @a ~ ~ ~ 1 1
execute if score #streamermode status matches 1 run schedule function map:interactable/radio/random 92s
execute if score #streamermode status matches 1 run return 0
# Если авторских прав нет
execute unless score #streamermode status matches 1 at @e[tag=aj.radio.root] run playsound minecraft:map.music.radio.omori master @a ~ ~ ~ 1 1
execute unless score #streamermode status matches 1 run schedule function map:interactable/radio/random 92s


# Достижение
execute unless score #music_advancement_song8 status matches 1 run scoreboard players set #music_advancement_song8 status 1