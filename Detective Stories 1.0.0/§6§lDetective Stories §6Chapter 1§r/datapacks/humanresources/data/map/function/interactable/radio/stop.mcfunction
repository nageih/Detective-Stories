# Забирает ачивку и проверяет - есть ли задержка
advancement revoke @a only map:interactable/radio_stop
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

# Убирает частицы если они есть
schedule clear map:interactable/radio/warped_spore

# Анимация нажатия кнопки
execute as @e[tag=aj.radio.root] run function animated_java:radio/animations/playing/stop
execute as @e[tag=aj.radio.root] run function animated_java:radio/animations/stop/play

# Проигрывание звука отключения музыки
execute at @e[tag=aj.radio.root] run playsound map.music.radio.press master @a ~ ~ ~ 1 1