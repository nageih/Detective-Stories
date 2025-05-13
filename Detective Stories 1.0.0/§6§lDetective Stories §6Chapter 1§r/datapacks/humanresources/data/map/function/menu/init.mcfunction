# Запуск цикла
function map:menu/loop
# Очистка всех анимаций
execute as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/hide_all/stop
# Состояние чтобы была первая кнопка
scoreboard players set #vertical_counter menu 0
scoreboard players set #vertical_counter_prev menu 0
# НА ВСЯЯЯЯЯКИЙ ЕСЛИ ВДРУГ НЕ ВЫКЛЮЧИЛОСЬ
schedule clear map:loop/butter_dog
stopsound @a * map.music.butterdog
# Музыка в главном меню
function map:menu/music_loop
# "Остановка" истинной концовки
execute as @e[tag=aj.true_ending.root] run function animated_java:true_ending/animations/cutscene/stop
# Звуки ветра
function map:loop/weather
# Ставит анимацией самую первую кнопку
execute as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/main_start/play