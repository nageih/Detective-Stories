# Забирает ачивку и проверяет - есть ли задержка
advancement revoke @a only map:interactable/radio_play
execute if score #radio_cooldown status matches 1 run return 0

# Очистка песен
schedule clear map:interactable/radio/random
stopsound @a * map.music.radio.322
stopsound @a * map.music.radio.alliwantforchristmas_ncs
stopsound @a * map.music.radio.alliwantforchristmas
stopsound @a * map.music.radio.eminem_ncs
stopsound @a * map.music.radio.eminem
stopsound @a * map.music.radio.itsbeginning_ncs
stopsound @a * map.music.radio.itsbeginning
stopsound @a * map.music.radio.lastchristmas
stopsound @a * map.music.radio.letitsnowjschlatt
stopsound @a * map.music.radio.moonlit
stopsound @a * map.music.radio.whisp
stopsound @a * map.music.radio.omori
stopsound @a * map.music.radio.omori2
stopsound @a * map.music.radio.omori3
stopsound @a * map.music.radio.swingin

# Ставит кулдаун и то что он уберётся через 23 тика
scoreboard players set #radio_cooldown status 1
schedule function map:interactable/radio/remove_cooldown 23t

# Анимация нажатия кнопки
execute as @e[tag=aj.radio.root] run function animated_java:radio/animations/playing/stop
execute as @e[tag=aj.radio.root] run function animated_java:radio/animations/play/play

# Проигрывание звука поиска музыки и нажатия на радио
execute at @e[tag=aj.radio.root] run playsound map.music.radio.press master @a ~ ~ ~ 1 1
execute at @e[tag=aj.radio.root] run playsound map.music.radio.search master @a ~ ~ ~ 1 1

# Выбор музыки через 22 тика
schedule function map:interactable/radio/random 22t

# Ачивка
execute unless score #music_advancement_song1 status matches 1 run return 0
execute unless score #music_advancement_song2 status matches 1 run return 0
execute unless score #music_advancement_song3 status matches 1 run return 0
execute unless score #music_advancement_song4 status matches 1 run return 0
execute unless score #music_advancement_song5 status matches 1 run return 0
execute unless score #music_advancement_song6 status matches 1 run return 0
execute unless score #music_advancement_song7 status matches 1 run return 0
execute unless score #music_advancement_song8 status matches 1 run return 0
execute unless score #music_advancement_song9 status matches 1 run return 0
execute unless score #music_advancement_song10 status matches 1 run return 0
execute unless score #music_advancement_song11 status matches 1 run return 0
execute unless score #music_advancement_song12 status matches 1 run return 0
execute unless score #music_advancement_song13 status matches 1 run return 0
advancement grant @a only map:advancements/adv3