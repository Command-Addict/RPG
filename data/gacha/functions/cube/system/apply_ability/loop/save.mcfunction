execute store result score .id gacha_virtual_data run data get storage gacha:ability abilities[0].id
execute store result score .value gacha_virtual_data run data get storage gacha:ability abilities[0].value

execute as @e[type=marker,tag=gacha_ability] if score @s gacha_virtual_data = .id gacha_virtual_data run tag @s add this
execute unless entity @e[type=marker,tag=gacha_ability,tag=this] run function gacha:cube/system/apply_ability/loop/save/new_id

execute store result score .temp gacha_virtual_data run data get entity @e[type=marker,tag=gacha_ability,tag=this,limit=1] data.value
execute store result entity @e[type=marker,tag=gacha_ability,tag=this,limit=1] data.value int 1 run scoreboard players operation .value gacha_virtual_data += .temp gacha_virtual_data

tag @e[type=marker,tag=gacha_ability,tag=this] remove this

data remove storage gacha:ability abilities[0] 
execute if data storage gacha:ability abilities[0] run function gacha:cube/system/apply_ability/loop/save