execute on target if entity @s[type=player] run tag @s add rpg_ultimate_target
execute unless score @s rpg_ultimate_grap_delay matches 1.. if entity @p[tag=rpg_ultimate_target] run function rpg:level/system/ultimate/loop/grap
scoreboard players remove @s[scores={rpg_ultimate_grap_delay=1..}] rpg_ultimate_grap_delay 1

execute store result score .health rpg_virtual_data run data get entity @s Health 20
execute if score @s rpg_entity_max_health >= health rpg_virtual_data unless score @s rpg_ultimate_thunder_delay matches 1.. at @p[tag=rpg_ultimate_target] run function rpg:level/system/ultimate/loop/thunder
scoreboard players remove @s[scores={rpg_ultimate_thunder_delay=1..}] rpg_ultimate_thunder_delay 1

tag @e[tag=rpg_ultimate_hidden,distance=..128] remove rpg_ultimate_hidden

execute if entity @p[tag=rpg_ultimate_target] store result entity @s ArmorDropChances[1] float 0.004 run scoreboard players get @s rpg_entity_level
execute unless entity @p[tag=rpg_ultimate_target] run data modify entity @s ArmorDropChances[1] set value 0.0f

tag @p[tag=rpg_ultimate_target] remove rpg_ultimate_target
tag @s remove waitfor__rpg_ultimate
execute as @e[tag=waitfor__rpg_ultimate,limit=1] at @s run function rpg:level/system/ultimate/loop

