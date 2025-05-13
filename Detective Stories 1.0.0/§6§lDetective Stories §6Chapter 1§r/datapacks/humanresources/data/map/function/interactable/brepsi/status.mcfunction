# Забирает ачивку
advancement revoke @a only map:interactable/brepsi

# Звук ради прикола
execute as @a at @s run playsound entity.player.burp master @s ~ ~ ~ 0.0125 1

# Проверка от лица каждой интеракции интерактировал ли с ней игрок; если нет, то ачивку не получит
execute as 5d2f3f51-e58e-4c70-a1f4-6697b51fa27f unless entity @s[nbt={interaction:{}}] run return 0
execute as 8942d366-b640-4fe2-88b3-c802902db61a unless entity @s[nbt={interaction:{}}] run return 0
execute as 5dd35cf3-7f5b-46aa-81b9-d109cfdb7545 unless entity @s[nbt={interaction:{}}] run return 0
execute as 3c587004-cffe-4550-8b09-06e0ad31caa3 unless entity @s[nbt={interaction:{}}] run return 0
execute as cf1c38f6-6c12-4ca1-ab22-92a6dd9a5a98 unless entity @s[nbt={interaction:{}}] run return 0

advancement grant @a only map:advancements/adv5
execute as @a run playsound map.random.brepsi master @s ~ ~ ~ 0.25 1