# Рандом на 20% шанса другой анимации idle
execute store result score #stranger2_idle random run random value 1..5

# Чтобы не было повторки
execute if score #stranger2_idle random matches 1 as @e[tag=aj.stranger2.root] run function animated_java:stranger2/animations/idle/play
execute if score #stranger2_idle random matches 2 as @e[tag=aj.stranger2.root] run function animated_java:stranger2/animations/idle2/play
execute if score #stranger2_idle random matches 3 as @e[tag=aj.stranger2.root] run function animated_java:stranger2/animations/idle/play
execute if score #stranger2_idle random matches 4 as @e[tag=aj.stranger2.root] run function animated_java:stranger2/animations/idle/play
execute if score #stranger2_idle random matches 5 as @e[tag=aj.stranger2.root] run function animated_java:stranger2/animations/idle/play

execute if score #s2_dialogue_count status matches 2.. run schedule function map:triggers/execute/bartender/func 5s
execute if score #s2_dialogue_count status matches 2.. run schedule function map:dialogue/choice_remove 5s
execute if score #s2_dialogue_count status matches 2.. run schedule function map:dialogue/remove_text 14s
execute if score #s2_dialogue_count status matches 2.. run scoreboard players set #s2_dialogue_count status 0

schedule function map:dialogue/dialogues/1/idle_loop 120t