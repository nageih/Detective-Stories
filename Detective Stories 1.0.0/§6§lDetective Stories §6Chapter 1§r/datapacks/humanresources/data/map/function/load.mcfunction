# Create scoreboards
scoreboard objectives add steps dummy
scoreboard objectives add random dummy
scoreboard objectives add status dummy
scoreboard objectives add interactableStatus dummy
scoreboard objectives add phys.timer dummy
scoreboard objectives add timer dummy
scoreboard objectives add quest_pos.x dummy
scoreboard objectives add quest_pos.y dummy
scoreboard objectives add quest_pos.z dummy
scoreboard objectives add pos.x dummy
scoreboard objectives add pos.y dummy
scoreboard objectives add pos.z dummy
scoreboard objectives add abs.x dummy
scoreboard objectives add abs.y dummy
scoreboard objectives add abs.z dummy
scoreboard objectives add distance dummy
scoreboard objectives add menu dummy
scoreboard objectives add CONST dummy
scoreboard objectives add markiplier trigger
scoreboard objectives add bobicraft trigger
scoreboard objectives add bobicraft trigger
scoreboard players enable @a markiplier
scoreboard players enable @a bobicraft
scoreboard players enable @a copyright
# Create bossbars
bossbar add quests "quest"
bossbar add quests_name "quest"
bossbar add quests_distance "quest"
bossbar add debug_markiplier [{"text": "\uB007", "color": "#fdffff","font":"minecraft:default","shadow_color":[0,0,0,0]},{"translate": "space.-11","font":"space"},{"text": "", "color": "#feffff"}]