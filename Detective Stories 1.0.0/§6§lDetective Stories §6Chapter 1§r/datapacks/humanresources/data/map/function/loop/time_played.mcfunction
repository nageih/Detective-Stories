schedule function map:loop/time_played 1t

execute as @a[tag=player,limit=1] run scoreboard players add #time_played timer 1

# Спидраннерский таймер
execute unless score #speedrun_timer status matches 1 run return 0


# Рассчитываем минуты (количество тиков делим на 1200)
scoreboard players operation #time_played_minutes timer = #time_played timer
scoreboard players operation #time_played_minutes timer /= #1200 CONST

# Рассчитываем секунды (оставшиеся тики после расчета минут)
scoreboard players operation #time_played_sec timer = #time_played timer
scoreboard players operation #time_played_sec timer %= #1200 CONST
scoreboard players operation #time_played_sec timer /= #20 CONST

# Рассчитываем миллисекунды (остаток от деления на 20 и умножаем на 50)
scoreboard players operation #time_played_ms timer = #time_played timer
scoreboard players operation #time_played_ms timer %= #20 CONST
scoreboard players operation #time_played_ms timer *= #50 CONST

# Выравнивание
execute if score #time_played_ms timer matches ..10 run title @a actionbar {"text":"","extra": [{"score":{"name":"#time_played_minutes","objective":"timer"}},{"text":" m. "},{"score":{"name":"#time_played_sec","objective":"timer"}},{"text":" s. 00"},{"score":{"name":"#time_played_ms","objective":"timer"}},{"text":" ms."}]}
execute if score #time_played_ms timer matches 10..100 run title @a actionbar {"text":"","extra": [{"score":{"name":"#time_played_minutes","objective":"timer"}},{"text":" m. "},{"score":{"name":"#time_played_sec","objective":"timer"}},{"text":" s. 0"},{"score":{"name":"#time_played_ms","objective":"timer"}},{"text":" ms."}]}
execute if score #time_played_ms timer matches 100.. run title @a actionbar {"text":"","extra": [{"score":{"name":"#time_played_minutes","objective":"timer"}},{"text":" m. "},{"score":{"name":"#time_played_sec","objective":"timer"}},{"text":" s. "},{"score":{"name":"#time_played_ms","objective":"timer"}},{"text":" ms."}]}