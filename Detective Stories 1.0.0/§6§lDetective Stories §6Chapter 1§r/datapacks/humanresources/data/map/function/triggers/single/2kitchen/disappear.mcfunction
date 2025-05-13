execute as @e[tag=aj.stranger1.root] run function animated_java:stranger1/animations/idle/stop
execute as @e[tag=aj.stranger1.root] run function animated_java:stranger1/animations/idle2/stop
schedule clear map:dialogue/dialogues/0/idle_loop
execute as @e[tag=aj.stranger2.root] run function animated_java:stranger2/animations/idle/stop
execute as @e[tag=aj.stranger2.root] run function animated_java:stranger2/animations/idle2/stop
schedule clear map:dialogue/dialogues/1/idle_loop
execute as @e[tag=aj.stranger1.root] run function animated_java:stranger1/animations/disappear/play
execute as @e[tag=aj.stranger2.root] run function animated_java:stranger2/animations/disappear/play