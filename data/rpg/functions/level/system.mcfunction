execute as @e[tag=!rpg_level_checked,type=!player] if data entity @s PersistenceRequired run tag @s add waitfor__rpg_level
tag @e[tag=!rpg_level_checked] add rpg_level_checked
execute as @e[tag=waitfor__rpg_level,limit=1] in rpg:cmd_addict run function rpg:level/system/loop
