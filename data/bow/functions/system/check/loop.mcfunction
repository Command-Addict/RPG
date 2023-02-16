tag @e[sort=nearest,limit=1,type=#arrows,nbt={HasBeenShot:0b},tag=!donefor__check_arrow] add this

data modify storage bow:check uuid_cmp set from storage bow:check uuid
execute store success score .temp gacha_virtual_data run data modify storage bow:check uuid set from entity @e[type=#arrows,tag=this,limit=1] Owner

execute if score .temp gacha_virtual_data matches 0 run function bow:system/check/loop/found

tag @e[type=#arrows,tag=this,limit=1] add donefor__check_arrow
tag @e[type=#arrows,tag=this,limit=1] remove this
execute as @e[sort=nearest,limit=1,type=#arrows,nbt={HasBeenShot:0b},tag=!donefor__check_arrow] run function bow:system/check/loop
