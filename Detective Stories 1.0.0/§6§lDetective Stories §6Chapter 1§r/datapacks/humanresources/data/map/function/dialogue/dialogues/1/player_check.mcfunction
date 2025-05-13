schedule function map:dialogue/dialogues/1/player_check 1t
execute as @e[tag=1,tag=interactable.dialogue,type=interaction,limit=1] at @s unless entity @a[distance=..3] run data merge storage youknowwhatelseismassive:lowtaperfade {next_dialogue:none}
execute as @e[tag=1,tag=interactable.dialogue,type=interaction,limit=1] at @s unless entity @a[distance=..3] run function map:dialogue/choice_remove
execute as @e[tag=1,tag=interactable.dialogue,type=interaction,limit=1] at @s unless entity @a[distance=..3] run function map:dialogue/remove_text
execute as @e[tag=1,tag=interactable.dialogue,type=interaction,limit=1] at @s unless entity @a[distance=..3] run tag 80d73490-6e26-440a-9ff3-65df5734a073 remove in_dialogue
execute as @e[tag=1,tag=interactable.dialogue,type=interaction,limit=1] at @s unless entity @a[distance=..3] run data merge entity @s {width:1.25f}
execute as @e[tag=1,tag=interactable.dialogue,type=interaction,limit=1] at @s unless entity @a[distance=..3] run schedule clear map:dialogue/dialogues/1/player_check
execute as @e[tag=1,tag=interactable.dialogue,type=interaction,limit=1] at @s unless entity @a[distance=..3] run schedule clear map:dialogue/update_text