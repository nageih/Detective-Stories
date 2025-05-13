# Дверь становится с состоянием открытой
tag @e[type=marker,tag=pd.trigger] add pd.state.opened

# Дверь открывается
schedule function map:interactable/pantry_door/open 1t
tag @e[type=marker,tag=pd.trigger] add cooldown
schedule function map:interactable/pantry_door/cooldown 11t

# Убирает у двери тег, что она закрыта
tag @e[type=marker,tag=pd.trigger] remove closed

# Ставит интеракшны кода в ноль
data merge entity @e[type=interaction,tag=interactable.interact.pd_code1,limit=1] {width:0f}
data merge entity @e[type=interaction,tag=interactable.interact.pd_code2,limit=1] {width:0f}
data merge entity @e[type=interaction,tag=interactable.interact.pd_code3,limit=1] {width:0f}
data merge entity @e[type=interaction,tag=interactable.interact.pd_code4,limit=1] {width:0f}

# Это чтобы функция status дальше не продолжилась :)
return 0