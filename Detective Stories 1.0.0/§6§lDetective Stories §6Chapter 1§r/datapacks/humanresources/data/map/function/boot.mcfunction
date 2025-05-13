# Затычка
#say Reloaded!

# Боссбары
#bossbar set minecraft:debug_markiplier visible false
#bossbar set minecraft:quests visible false
#bossbar set minecraft:quests_name visible false
#bossbar set minecraft:quests_distance visible false
#bossbar set minecraft:debug_markiplier visible true
#bossbar set minecraft:quests visible true
#bossbar set minecraft:quests_name visible true
#bossbar set minecraft:quests_distance visible true

# Телепортация в лобби
schedule function map:lobby/teleport 1s
schedule function map:lobby/teleport 5s
tag @a add player