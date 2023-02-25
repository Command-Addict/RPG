execute store result score .value rpg_virtual_data run attribute @s minecraft:generic.max_health get 10
scoreboard players operation .value rpg_virtual_data *= .percent rpg_virtual_data
scoreboard players operation .value rpg_virtual_data /= #100 rpg_virtual_data

function rpg:utils/damage

tag @s remove target
execute as @p[tag=target] run function rpg:level/system/ultimate/thunder/loop
