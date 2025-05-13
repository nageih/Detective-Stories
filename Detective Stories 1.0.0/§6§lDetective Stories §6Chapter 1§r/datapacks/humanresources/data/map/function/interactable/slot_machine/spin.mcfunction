# Рандом из четырёх спинов
execute store result score #sm_spin random run random value 1..9

# Проверка какое число
execute if score #sm_spin random matches 1 as @e[tag=aj.slot_machine.root] run function animated_java:slot_machine/animations/spin1/play
execute if score #sm_spin random matches 1 run schedule function map:interactable/slot_machine/cooldown 42t
execute if score #sm_spin random matches 2 as @e[tag=aj.slot_machine.root] run function animated_java:slot_machine/animations/spin2/play
execute if score #sm_spin random matches 2 run schedule function map:interactable/slot_machine/cooldown 42t
execute if score #sm_spin random matches 3 as @e[tag=aj.slot_machine.root] run function animated_java:slot_machine/animations/spin3/play
execute if score #sm_spin random matches 3 run schedule function map:interactable/slot_machine/cooldown 30t
execute if score #sm_spin random matches 4 as @e[tag=aj.slot_machine.root] run function animated_java:slot_machine/animations/spin4/play
execute if score #sm_spin random matches 4 run schedule function map:interactable/slot_machine/cooldown 45t
execute if score #sm_spin random matches 5 as @e[tag=aj.slot_machine.root] run function animated_java:slot_machine/animations/spin5/play
execute if score #sm_spin random matches 5 run schedule function map:interactable/slot_machine/cooldown 45t
execute if score #sm_spin random matches 6 as @e[tag=aj.slot_machine.root] run function animated_java:slot_machine/animations/spin1/play
execute if score #sm_spin random matches 6 run schedule function map:interactable/slot_machine/cooldown 42t
execute if score #sm_spin random matches 7 as @e[tag=aj.slot_machine.root] run function animated_java:slot_machine/animations/spin2/play
execute if score #sm_spin random matches 7 run schedule function map:interactable/slot_machine/cooldown 42t
execute if score #sm_spin random matches 8 as @e[tag=aj.slot_machine.root] run function animated_java:slot_machine/animations/spin3/play
execute if score #sm_spin random matches 8 run schedule function map:interactable/slot_machine/cooldown 30t
execute if score #sm_spin random matches 9 as @e[tag=aj.slot_machine.root] run function animated_java:slot_machine/animations/spin4/play
execute if score #sm_spin random matches 9 run schedule function map:interactable/slot_machine/cooldown 45t