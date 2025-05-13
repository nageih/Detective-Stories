# Убирает тэг проверки расстояния
tag @e[tag=footstep,tag=distance_check] remove distance_check
# Если нет слоев снега и под ногами блок снега
execute if block ~ ~-1 ~ snow_block unless block ~ ~ ~ snow align y run summon text_display ~ ~ ~ {alignment: "center", background: 0, default_background: 0b, text: '"뀈"', text_opacity: 96b, transformation: {left_rotation: [-0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.25f, 1.25f, 1.25f], translation: [0.0f, 0.0f, 0.0f]},Tags:["footstep"]}
# Если 1 слой снега
execute if block ~ ~ ~ snow[layers=1] align y run summon text_display ~ ~0.125 ~ {alignment: "center", background: 0, default_background: 0b, text: '"뀈"', text_opacity: 96b, transformation: {left_rotation: [-0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.25f, 1.25f, 1.25f], translation: [0.0f, 0.0f, 0.0f]},Tags:["footstep"]}
# Если 2 слоя снега
execute if block ~ ~ ~ snow[layers=2] align y run summon text_display ~ ~0.25 ~ {alignment: "center", background: 0, default_background: 0b, text: '"뀈"', text_opacity: 96b, transformation: {left_rotation: [-0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.25f, 1.25f, 1.25f], translation: [0.0f, 0.0f, 0.0f]},Tags:["footstep"]}
# Если 3 слоя снега
execute if block ~ ~ ~ snow[layers=3] align y run summon text_display ~ ~0.375 ~ {alignment: "center", background: 0, default_background: 0b, text: '"뀈"', text_opacity: 96b, transformation: {left_rotation: [-0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.25f, 1.25f, 1.25f], translation: [0.0f, 0.0f, 0.0f]},Tags:["footstep"]}
# Если 4 слоя снега
execute if block ~ ~ ~ snow[layers=4] align y run summon text_display ~ ~0.5 ~ {alignment: "center", background: 0, default_background: 0b, text: '"뀈"', text_opacity: 96b, transformation: {left_rotation: [-0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.25f, 1.25f, 1.25f], translation: [0.0f, 0.0f, 0.0f]},Tags:["footstep"]}
# Если 5 слоев снега
execute if block ~ ~ ~ snow[layers=5] align y run summon text_display ~ ~0.625 ~ {alignment: "center", background: 0, default_background: 0b, text: '"뀈"', text_opacity: 96b, transformation: {left_rotation: [-0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.25f, 1.25f, 1.25f], translation: [0.0f, 0.0f, 0.0f]},Tags:["footstep"]}

execute as @e[type=text_display,distance=..1,limit=1,tag=footstep,sort=nearest] run tag @s add distance_check