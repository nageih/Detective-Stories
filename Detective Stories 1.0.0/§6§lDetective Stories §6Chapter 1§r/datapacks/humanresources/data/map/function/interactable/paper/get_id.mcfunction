$function map:interactable/paper/ids/$(id)/status


# Костыль на проверку тега (ибо Моджанг криворукие болваны), если вдруг вместо $(name) выдаст другой тег
execute if entity @s[tag=missing_person] run function map:interactable/paper/ids/missing_person/status