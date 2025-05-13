scoreboard players add #credits timer 1
execute as @a run spectate @e[tag=credits.camera,limit=1]
schedule function map:cutscene/credits 1t

execute if score #credits timer matches 1..2009 as @a if entity @s[tag=map_completed] if predicate map:player/input_jump run scoreboard players set #credits timer 2010

execute if score #credits timer matches 1 run clear @a
execute if score #credits timer matches 1 run gamemode spectator @a
execute if score #credits timer matches 1 run title @a times 0 15 10
execute if score #credits timer matches 1 run title @a title {"text":"\uA000","font":"default"}
execute if score #credits timer matches 1 as @a at @s run playsound map.music.credits master @a ~ ~ ~ 0.75 1
execute if score #credits timer matches 1 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {text:'{"translate":"map.credits.idea","extra":["\\n\\n",{"translate":"map.credits.vladislavvc","font":"minecraft:minecraft_five","bold":true,"italic":false,"color":"#FFFFFF"}],"font":"minecraft:minecraft_five","italic":true,"color":"#767A86"}'}
execute if score #credits timer matches 1 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {transformation:{scale:[0.25f,0.25f,0.25f]},start_interpolation:0,interpolation_duration:9}
execute if score #credits timer matches 36 run title @a actionbar {"translate":"map.credits.pressspace","font":"minecraft_five"}

execute if score #credits timer matches 151 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {transformation:{scale:[0.0f,0.0f,0.0f]},start_interpolation:0}
execute if score #credits timer matches 161 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {text:'{"translate":"map.credits.script","extra":["\\n\\n",{"translate":"map.credits.vladislavvc","font":"minecraft:minecraft_five","bold":true,"italic":false,"color":"#FFFFFF"}],"font":"minecraft:minecraft_five","italic":true,"color":"#767A86"}'}
execute if score #credits timer matches 161 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {transformation:{scale:[0.25f,0.25f,0.25f]},start_interpolation:0}

execute if score #credits timer matches 291 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {transformation:{scale:[0.0f,0.0f,0.0f]},start_interpolation:0}
execute if score #credits timer matches 301 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {text:'{"translate":"map.credits.gamedesign","extra":["\\n\\n",{"translate":"map.credits.vladislavvc","font":"minecraft:minecraft_five","bold":true,"italic":false,"color":"#FFFFFF"}],"font":"minecraft:minecraft_five","italic":true,"color":"#767A86"}'}
execute if score #credits timer matches 301 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {transformation:{scale:[0.25f,0.25f,0.25f]},start_interpolation:0}

execute if score #credits timer matches 441 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {transformation:{scale:[0.0f,0.0f,0.0f]},start_interpolation:0}
execute if score #credits timer matches 451 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {text:'{"translate":"map.credits.leveldesign","extra":["\\n\\n",{"translate":"map.credits.vladislavvc","font":"minecraft:minecraft_five","bold":true,"italic":false,"color":"#FFFFFF"}],"font":"minecraft:minecraft_five","italic":true,"color":"#767A86"}'}
execute if score #credits timer matches 451 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {transformation:{scale:[0.25f,0.25f,0.25f]},start_interpolation:0}

execute if score #credits timer matches 591 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {transformation:{scale:[0.0f,0.0f,0.0f]},start_interpolation:0}
execute if score #credits timer matches 601 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {text:'{"translate":"map.credits.mechanics","extra":["\\n\\n",{"translate":"map.credits.vladislavvc","font":"minecraft:minecraft_five","bold":true,"italic":false,"color":"#FFFFFF"}],"font":"minecraft:minecraft_five","italic":true,"color":"#767A86"}'}
execute if score #credits timer matches 601 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {transformation:{scale:[0.25f,0.25f,0.25f]},start_interpolation:0}

execute if score #credits timer matches 741 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {transformation:{scale:[0.0f,0.0f,0.0f]},start_interpolation:0}
execute if score #credits timer matches 751 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {text:'{"translate":"map.credits.datapack","extra":["\\n\\n",{"translate":"map.credits.vladislavvc","font":"minecraft:minecraft_five","bold":true,"italic":false,"color":"#FFFFFF"}],"font":"minecraft:minecraft_five","italic":true,"color":"#767A86"}'}
execute if score #credits timer matches 751 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {transformation:{scale:[0.25f,0.25f,0.25f]},start_interpolation:0}

execute if score #credits timer matches 891 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {transformation:{scale:[0.0f,0.0f,0.0f]},start_interpolation:0}
execute if score #credits timer matches 901 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {text:'{"translate":"map.credits.soundeffects","extra":["\\n\\n",{"translate":"map.credits.soundeffects_text","font":"minecraft:minecraft_five","bold":true,"italic":false,"color":"#FFFFFF"}],"font":"minecraft:minecraft_five","italic":true,"color":"#767A86"}'}
execute if score #credits timer matches 901 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {transformation:{scale:[0.25f,0.25f,0.25f]},start_interpolation:0}

execute if score #credits timer matches 1041 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {transformation:{scale:[0.0f,0.0f,0.0f]},start_interpolation:0}
execute if score #credits timer matches 1051 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {text:'{"translate":"map.credits.shader","extra":["\\n\\n",{"text":"DIVERSIUM","font":"minecraft:minecraft_five","bold":true,"italic":false,"color":"#FFFFFF"}],"font":"minecraft:minecraft_five","italic":true,"color":"#767A86"}'}
execute if score #credits timer matches 1051 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {transformation:{scale:[0.25f,0.25f,0.25f]},start_interpolation:0}

execute if score #credits timer matches 1191 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {transformation:{scale:[0.0f,0.0f,0.0f]},start_interpolation:0}
execute if score #credits timer matches 1201 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {text:'{"translate":"map.credits.models","extra":["\\n\\n",{"translate":"map.credits.vladislavvc","font":"minecraft:minecraft_five","bold":true,"italic":false,"color":"#FFFFFF"}],"font":"minecraft:minecraft_five","italic":true,"color":"#767A86"}'}
execute if score #credits timer matches 1201 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {transformation:{scale:[0.25f,0.25f,0.25f]},start_interpolation:0}

execute if score #credits timer matches 1341 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {transformation:{scale:[0.0f,0.0f,0.0f]},start_interpolation:0}
execute if score #credits timer matches 1351 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {text:'{"translate":"map.credits.main_sponsor","extra":["\\n\\n",{"translate":"map.credits.bobicraft","font":"minecraft:minecraft_five","bold":true,"italic":false,"color":"#b2ecd1"}],"font":"minecraft:minecraft_five","italic":true,"color":"#767A86"}'}
execute if score #credits timer matches 1351 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {transformation:{scale:[0.25f,0.25f,0.25f]},start_interpolation:0}

execute if score #credits timer matches 1491 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {transformation:{scale:[0.0f,0.0f,0.0f]},start_interpolation:0}
execute if score #credits timer matches 1501 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {text:'{"translate":"map.credits.boosters1tier","extra":["\\n\\n",{"text":"XeKyT, KefrokOk, VailetGod, AlexLime008, Семён Паршаков, ЯКОВЦОВ, TimFilm Studios, Egor Mookki, HaS_KeR, Fraizer","font":"minecraft:minecraft_five","bold":false,"italic":false,"color":"#a77821"}],"font":"minecraft:minecraft_five","italic":true,"color":"#767A86"}'}
execute if score #credits timer matches 1501 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {transformation:{scale:[0.25f,0.25f,0.25f]},start_interpolation:0}

execute if score #credits timer matches 1591 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {transformation:{scale:[0.0f,0.0f,0.0f]},start_interpolation:0}
execute if score #credits timer matches 1601 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {text:'{"translate":"map.credits.boosters2tier","extra":["\\n\\n",{"text":"lozki, TweekHeeks, ER-Photef, Локит, Земляной Феодаллер (Feodaller <3)","font":"minecraft:minecraft_five","bold":false,"italic":false,"color":"#d0cfcd"}],"font":"minecraft:minecraft_five","italic":true,"color":"#767A86"}'}
execute if score #credits timer matches 1601 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {transformation:{scale:[0.25f,0.25f,0.25f]},start_interpolation:0}

execute if score #credits timer matches 1691 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {transformation:{scale:[0.0f,0.0f,0.0f]},start_interpolation:0}
execute if score #credits timer matches 1701 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {text:'{"translate":"map.credits.boosters3tier","extra":["\\n\\n",{"text":"MrGoose_7, NateShapiro","font":"minecraft:minecraft_five","bold":true,"italic":false,"color":"#feff37"}],"font":"minecraft:minecraft_five","italic":true,"color":"#d0cfcd"}'}
execute if score #credits timer matches 1701 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {transformation:{scale:[0.25f,0.25f,0.25f]},start_interpolation:0}

execute if score #credits timer matches 1791 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {transformation:{scale:[0.0f,0.0f,0.0f]},start_interpolation:0}
execute if score #credits timer matches 1801 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {text:'{"translate":"map.credits.betatesters","extra":["\\n\\n",{"text":"AlexLime008, XeKyT, HaS_KeR42, TweekHeeks, YtDenBoom, MrGoose_7, Froggess_","font":"minecraft:default","bold":false,"italic":false,"color":"#FFFFFF"}],"font":"minecraft:minecraft_five","italic":true,"color":"#d0cfcd"}'}
execute if score #credits timer matches 1801 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {transformation:{scale:[0.25f,0.25f,0.25f]},start_interpolation:0}

execute if score #credits timer matches 1891 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {transformation:{scale:[0.0f,0.0f,0.0f]},start_interpolation:0,interpolation_duration:20}
execute if score #credits timer matches 1911 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {text:'{"translate":"map.credits.thanks","extra":["\\n\\n",{"text":"\\n","font":"minecraft:minecraft_five","bold":true,"italic":false,"color":"#d8d5d5"}],"font":"minecraft:minecraft_five","italic":false,"bold":true,"color":"#d0cfcd"}'}
execute if score #credits timer matches 1911 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {transformation:{scale:[0.25f,0.25f,0.25f]},start_interpolation:0}
execute if score #credits timer matches 1931 run title @a actionbar {"translate":"map.credits.chapter1ending","font":"minecraft:minecraft_five","bold":true}

execute if score #credits timer matches 2011 run title @a actionbar {"text":" ","font":"minecraft:minecraft_five","bold":true}
execute if score #credits timer matches 2012 run title @a times 20 1 20
execute if score #credits timer matches 2012 run title @a title {"text":"\uA000"}
execute if score #credits timer matches 2012 run tag @a remove already_first
execute if score #credits timer matches 2012 run tag @a add map_completed
execute if score #credits timer matches 2032 run function map:menu/init
execute if score #credits timer matches 2032 run schedule clear map:cutscene/credits
execute if score #credits timer matches 2032 run data merge entity @e[type=text_display,tag=credits_text,limit=1] {transformation:{scale:[0.0f,0.0f,0.0f]},start_interpolation:0}
execute if score #credits timer matches 2032 run stopsound @a * map.music.credits
execute if score #credits timer matches 2032 run scoreboard players set #credits timer 0