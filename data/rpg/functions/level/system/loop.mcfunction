execute store result score .x rpg_virtual_data run data get entity @s Pos[0]
scoreboard players operation .x rpg_virtual_data -= .worldspawn_x rpg_virtual_data

execute store result score .z rpg_virtual_data run data get entity @s Pos[2]
scoreboard players operation .z rpg_virtual_data -= .worldspawn_z rpg_virtual_data

execute if score .x rpg_virtual_data matches ..0 run scoreboard players operation .x rpg_virtual_data *= #-1 rpg_virtual_data
execute if score .z rpg_virtual_data matches ..0 run scoreboard players operation .z rpg_virtual_data *= #-1 rpg_virtual_data
execute store result score @s rpg_virtual_data run scoreboard players operation .x rpg_virtual_data > .z rpg_virtual_data

function rpg:utils/get_level_by_distance

scoreboard players operation @s rpg_entity_level = .value rpg_virtual_data
execute if score .value rpg_virtual_data matches 0 run tag @s remove rpg_level_checked

data merge block 0 0 0 {Text1:'["Level ",{"score":{"name": ".value","objective": "rpg_virtual_data"}}]'} 
data modify entity @s CustomName set from block 0 0 0 Text1

execute if entity @s[type=creeper] store result entity @s ExplosionRadius byte 0.06 run scoreboard players add .value rpg_virtual_data 50

function rpg:level/system/loop/attribute
execute store result entity @s Health float 0.1 run attribute @s minecraft:generic.max_health get 10

execute if predicate rpg:level/prob/ultimate unless entity @e[tag=rpg_ultimate,distance=..128] run function rpg:level/system/loop/be_ultimate_hidden

tag @s remove waitfor__rpg_level
execute as @e[tag=waitfor__rpg_level,limit=1] run function rpg:level/system/loop