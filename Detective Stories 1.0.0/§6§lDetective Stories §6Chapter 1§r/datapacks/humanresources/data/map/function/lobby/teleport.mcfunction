# Если у игрока есть тег already_first
execute if entity @a[tag=already_first] run return 0
# Выключение функций меню
schedule clear map:menu/loop
stopsound @a * map.music.mainmenu
schedule clear map:menu/music_loop
# Телепортация
tp @a -176.0 47.0 65.5 180 0
# Режим приключений
gamemode adventure @a
# Убирает звуки погоды
schedule clear map:loop/weather
stopsound @a * map.ambient.windy