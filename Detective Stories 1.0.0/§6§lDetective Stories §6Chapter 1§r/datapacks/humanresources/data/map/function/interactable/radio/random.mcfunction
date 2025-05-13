# Сохраняет предыдущую песню в радио
execute store result score #radio_music_prev random run scoreboard players get #radio_music random

# Рандом на 13 песен
execute store result score #radio_music random run random value 1..13

# Проводит рандом ещё раз, если число совпадает с предыдущей песней (трижды, т.к. в таком случае шанс что песня будет та же - стремится к нулю) 
execute if score #radio_music random = #radio_music_prev random store result score #radio_music random run random value 1..13
execute if score #radio_music random = #radio_music_prev random store result score #radio_music random run random value 1..13
execute if score #radio_music random = #radio_music_prev random store result score #radio_music random run random value 1..13

# Проверка какое число
execute if score #radio_music random matches 1 run function map:interactable/radio/songs/1_song
execute if score #radio_music random matches 2 run function map:interactable/radio/songs/2_song
execute if score #radio_music random matches 3 run function map:interactable/radio/songs/3_song
execute if score #radio_music random matches 4 run function map:interactable/radio/songs/4_song
execute if score #radio_music random matches 5 run function map:interactable/radio/songs/5_song
execute if score #radio_music random matches 6 run function map:interactable/radio/songs/6_song
execute if score #radio_music random matches 7 run function map:interactable/radio/songs/7_song
execute if score #radio_music random matches 8 run function map:interactable/radio/songs/8_song
execute if score #radio_music random matches 9 run function map:interactable/radio/songs/9_song
execute if score #radio_music random matches 10 run function map:interactable/radio/songs/10_song
execute if score #radio_music random matches 11 run function map:interactable/radio/songs/11_song
execute if score #radio_music random matches 12 run function map:interactable/radio/songs/12_song
execute if score #radio_music random matches 13 run function map:interactable/radio/songs/13_song

# Анимация радио
execute as @e[tag=aj.radio.root] run function animated_java:radio/animations/playing/play