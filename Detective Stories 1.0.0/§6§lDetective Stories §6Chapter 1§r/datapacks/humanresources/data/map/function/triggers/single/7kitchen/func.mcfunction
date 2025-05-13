# Очищает цель, чтобы не было видно во время синематика
bossbar set minecraft:quests visible false
bossbar set minecraft:quests_name visible false
bossbar set minecraft:quests_distance visible false
# Начало катсцены
execute as @e[tag=aj.cafe_cutscene.root] run function animated_java:cafe_cutscene/animations/hellnah/play