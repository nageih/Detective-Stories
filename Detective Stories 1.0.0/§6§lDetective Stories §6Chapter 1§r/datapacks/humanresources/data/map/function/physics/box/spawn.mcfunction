$summon minecraft:item_display ~ ~ ~ {item:{count:1b,id:"minecraft:yellow_dye",components:{custom_model_data:{floats:[$(back_model)]}}},Tags:["$(tag)","phys.prop.box","map.usable"],teleport_duration:6}
$summon shulker ~ ~ ~ {Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Peek:0b,NoAI:1b,Silent:1b,Color:14b,AttachFace:0b,active_effects:[{id:"invisibility",amplifier:1b,duration:1000000,show_particles:0b}],Tags:["phys.cube","$(tag)"],Rotation:[0.0f,90.0f]}
$summon minecraft:interaction ~ ~ ~ {response:1b,height:1.01f,width:1.01f,Tags:["phys.interact.box","$(tag)"]}
#$scoreboard players set @e[type=item_display,tag=$(tag)] phys.timer 0
#$summon arrow ~ ~ ~ {Silent:1b,pickup:0b,damage:0b,Tags:["$(tag)"]}
$execute as @p at @s run ride @e[type=shulker,tag=$(tag),sort=nearest,limit=1] mount @e[type=item_display,tag=$(tag),sort=nearest,limit=1]
$execute as @p at @s run ride @e[type=interaction,tag=$(tag),sort=nearest,limit=1] mount @e[type=item_display,tag=$(tag),sort=nearest,limit=1]
#$execute as @p at @s run ride @e[type=item_display,tag=$(tag),sort=nearest,limit=1] mount @e[type=arrow,tag=$(tag),sort=nearest,limit=1]