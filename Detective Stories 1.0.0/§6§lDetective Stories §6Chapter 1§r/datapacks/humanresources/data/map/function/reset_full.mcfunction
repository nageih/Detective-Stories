## Полный сброс карты

# Обычный ресет
function map:reset

# ЗАБИРАЕТ ТЕГ
tag @a remove player
tag @a remove already_first
# Сброс таймера прохождения
scoreboard players reset #time_played timer
function map:loop/time_played_convert

# Сброс всех достижений
advancement revoke @a only map:click/lobby_reset
function map:interactable/brepsi/reset
scoreboard players reset #lucky_advancement status
scoreboard players reset #cafe_sign_advancement status
advancement revoke @a only map:advancements/adv2
advancement revoke @a only map:advancements/adv3
advancement revoke @a only map:advancements/adv4
advancement revoke @a only map:advancements/adv5
advancement revoke @a only map:advancements/adv6
advancement revoke @a only map:advancements/way_to_go
advancement revoke @a only map:advancements/speedrunner
scoreboard players set #music_advancement_song1 status 0
scoreboard players set #music_advancement_song2 status 0
scoreboard players set #music_advancement_song3 status 0
scoreboard players set #music_advancement_song4 status 0
scoreboard players set #music_advancement_song5 status 0
scoreboard players set #music_advancement_song6 status 0
scoreboard players set #music_advancement_song7 status 0
scoreboard players set #music_advancement_song8 status 0
scoreboard players set #music_advancement_song9 status 0
scoreboard players set #music_advancement_song10 status 0
scoreboard players set #music_advancement_song11 status 0
scoreboard players set #music_advancement_song12 status 0
scoreboard players set #music_advancement_song13 status 0