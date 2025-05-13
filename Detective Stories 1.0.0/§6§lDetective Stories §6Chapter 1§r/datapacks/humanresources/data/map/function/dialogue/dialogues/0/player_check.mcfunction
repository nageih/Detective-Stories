schedule function map:dialogue/dialogues/0/player_check 1t
execute as @e[tag=0,tag=interactable.dialogue,type=interaction,limit=1] at @s unless entity @a[distance=..3] run data merge storage youknowwhatelseismassive:lowtaperfade {next_dialogue:none}
execute as @e[tag=0,tag=interactable.dialogue,type=interaction,limit=1] at @s unless entity @a[distance=..3] run function map:dialogue/remove_text
execute as @e[tag=0,tag=interactable.dialogue,type=interaction,limit=1] at @s unless entity @a[distance=..3] run tag 2f8dcf37-0c28-4d26-81c4-53ed08175581 remove in_dialogue
execute as @e[tag=0,tag=interactable.dialogue,type=interaction,limit=1] at @s unless entity @a[distance=..3] run data merge entity @s {width:1.0f}
execute as @e[tag=0,tag=interactable.dialogue,type=interaction,limit=1] at @s unless entity @a[distance=..3] run schedule clear map:dialogue/dialogues/0/player_check
execute as @e[tag=0,tag=interactable.dialogue,type=interaction,limit=1] at @s unless entity @a[distance=..3] run schedule clear map:dialogue/update_text