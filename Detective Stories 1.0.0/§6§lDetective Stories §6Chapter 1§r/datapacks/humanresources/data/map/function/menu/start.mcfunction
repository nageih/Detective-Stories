# Очистка главного цикла меню
schedule clear map:menu/loop
# Анимация нажатия кнопки
execute as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/main_start_pressed/play
# Камера плавно влетает и начинается затемнение
execute as @e[tag=aj.main_menu.root] run function animated_java:main_menu/animations/game_starts/play
# Затемнение
title @a times 60 20 10
title @a title {"text":"\uA000"}
title @a actionbar {"translate":"vladislavvc.presents","font":"minecraft:minecraft_five","bold":true,"shadow_color":[0,0,0,0]}
# Катсцена начала карты
schedule function map:cutscene/start 60t