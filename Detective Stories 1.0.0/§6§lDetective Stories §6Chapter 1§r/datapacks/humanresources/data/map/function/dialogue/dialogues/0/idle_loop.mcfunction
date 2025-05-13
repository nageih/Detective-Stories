# Рандом на 20% шанса другой анимации idle
execute store result score #stranger1_idle random run random value 1..5

# Чтобы не было повторки
execute if score #stranger1_idle random matches 1 as @e[tag=aj.stranger1.root] run function animated_java:stranger1/animations/idle/play
execute if score #stranger1_idle random matches 2 as @e[tag=aj.stranger1.root] run function animated_java:stranger1/animations/idle2/play
execute if score #stranger1_idle random matches 3 as @e[tag=aj.stranger1.root] run function animated_java:stranger1/animations/idle/play
execute if score #stranger1_idle random matches 4 as @e[tag=aj.stranger1.root] run function animated_java:stranger1/animations/idle/play
execute if score #stranger1_idle random matches 5 as @e[tag=aj.stranger1.root] run function animated_java:stranger1/animations/idle/play

schedule function map:dialogue/dialogues/0/idle_loop 119t