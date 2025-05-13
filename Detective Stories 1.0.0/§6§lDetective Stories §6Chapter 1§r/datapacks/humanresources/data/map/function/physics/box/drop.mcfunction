schedule clear map:physics/box/pickup_loop
function map:ray/loop
advancement revoke @a only map:physics/prop.box
tag @e[type=item_display,sort=nearest,limit=1] remove picked