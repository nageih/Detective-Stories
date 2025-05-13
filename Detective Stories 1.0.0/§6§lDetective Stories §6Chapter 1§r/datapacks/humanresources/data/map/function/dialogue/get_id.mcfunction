# Если уже идёт диалог
execute if entity @s[tag=in_dialogue] run return 0
# Если вдруг игрок уже говорил
execute if entity @s[tag=already_talked] run return run function map:dialogue/dialogue_not_available






$function map:dialogue/dialogues/$(id)/init










# Костыль на проверку тега (ибо Моджанг криворукие болваны), если вдруг вместо $(id) выдаст другой тег
execute if entity @s[tag=0debug] run function map:interactable/item/ids/0debug/status