# Ставит в storage первое слово из тега, что ставится при спавне модели
data modify storage youknowwhatelseismassive:lowtaperfade dialogue.id set from entity @e[type=interaction,tag=interactable.dialogue,sort=nearest,limit=1,nbt={interaction:{}}] Tags[0]

# Далее исполняется заданная функция с этим числом, где уже всё прописано
execute as @e[type=interaction,tag=interactable.dialogue,sort=nearest,limit=1,nbt={interaction:{}}] run function map:dialogue/get_id with storage youknowwhatelseismassive:lowtaperfade dialogue
execute as @e[type=interaction,tag=interactable.dialogue] at @s run data remove entity @s interaction
advancement revoke @a only map:interactable/dialogue