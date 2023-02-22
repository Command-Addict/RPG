execute on attacker if entity @s[tag=rpg_ultimate] run tag @s add rpg_source

execute store result score .value rpg_virtual_data run attribute @s minecraft:generic.max_health get 10
scoreboard players operation .value rpg_virtual_data *= @e[tag=rpg_source,limit=1] rpg_entity_level
scoreboard players operation .value rpg_virtual_data /= #500 rpg_virtual_data

tellraw @a [{"score":{"objective":"rpg_virtual_data","name":".value"}}]

function rpg:level/system/ultimate/hurt/damage
tag @e[tag=rpg_source] remove rpg_source

tag @s add rpg_ultimate_hurt_delay
execute as @a[advancements={rpg:level/hurt_by_ultimate_mob=true},tag=!rpg_ultimate_hurt_delay,limit=1] at @s run function rpg:level/system/ultimate/hurt