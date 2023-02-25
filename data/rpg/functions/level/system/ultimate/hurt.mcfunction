execute on attacker if entity @s[tag=rpg_ultimate] run tag @s add rpg_source

execute store result score .value rpg_virtual_data run attribute @s minecraft:generic.max_health get 10
execute store result score .damage rpg_virtual_data run attribute @e[tag=rpg_source,limit=1] minecraft:generic.attack_damage get 10
scoreboard players operation .value rpg_virtual_data *= @e[tag=rpg_source,limit=1] rpg_entity_level
scoreboard players operation .value rpg_virtual_data /= #500 rpg_virtual_data

tellraw @a [{"score":{"objective":"rpg_virtual_data","name":".value"}}]
tellraw @a [{"nbt":"Health","entity": "@s"}]

execute if entity @e[tag=rpg_source] if score .value rpg_virtual_data matches 1.. run function rpg:utils/damage
tellraw @a [{"score":{"objective":"rpg_virtual_data","name":".value"}}]
tellraw @a [{"nbt":"Health","entity": "@s"}]

advancement revoke @s only rpg:level/hurt_by_ultimate_mob
execute as @a[advancements={rpg:level/hurt_by_ultimate_mob=true},limit=1] at @s run function rpg:level/system/ultimate/hurt