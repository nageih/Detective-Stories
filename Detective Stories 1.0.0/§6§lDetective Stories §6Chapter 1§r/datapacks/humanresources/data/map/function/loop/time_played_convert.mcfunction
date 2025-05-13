# Очистить старое значение таймера (если есть)
schedule clear map:loop/time_played

# Ачивка на прохождение за 4 минуты
execute if score #time_played timer matches ..4800 run advancement grant @a only map:advancements/speedrunner

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


# Отобразить результаты в виде текста
data merge entity @e[type=text_display,tag=time_played,limit=1] {text:'{"text":"","extra": [{"score":{"name":"#time_played_minutes","objective":"timer"}},{"text":" m. "},{"score":{"name":"#time_played_sec","objective":"timer"}},{"text":" s. "},{"score":{"name":"#time_played_ms","objective":"timer"}},{"text":" ms."}]}'}