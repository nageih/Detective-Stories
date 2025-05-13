$function map:interactable/item/ids/$(name)/status


# Костыль на проверку тега (ибо Моджанг криворукие болваны), если вдруг вместо $(name) выдаст другой тег
execute if entity @s[tag=0debug] run function map:interactable/item/ids/0debug/status
execute if entity @s[tag=0street_door_key] run function map:interactable/item/ids/0street_door_key/status