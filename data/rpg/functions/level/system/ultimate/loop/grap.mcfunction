execute at @s facing entity @p[tag=rpg_ultimate_target] eyes positioned as @p[tag=rpg_ultimate_target] rotated ~ 0 positioned ^ ^ ^10 run summon potion ~ ~ ~ {Tags:["rpg_ultimate_damage_source"]}
data modify entity @e[tag=rpg_ultimate_damage_source,limit=1] Owner set from entity @s UUID
data modify entity @e[tag=rpg_ultimate_damage_source,limit=1] CustomName set from entity @s CustomName
execute store success score .value rpg_virtual_data run damage @p[tag=rpg_ultimate_target] 3.0 minecraft:indirect_magic by @e[type=potion,tag=rpg_ultimate_damage_source,limit=1]
kill @e[type=potion,tag=rpg_ultimate_damage_source]

execute if score .value rpg_virtual_data matches 1 run function rpg:level/system/ultimate/loop/grap/run

