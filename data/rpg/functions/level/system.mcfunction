execute as @e[tag=!rpg_level_checked,type=!player] if data entity @s PersistenceRequired run tag @s add waitfor__rpg_level
tag @e[tag=!rpg_level_checked] add rpg_level_checked
execute as @e[tag=waitfor__rpg_level,limit=1] in rpg:cmd_addict run function rpg:level/system/loop

execute if entity @e[tag=rpg_ultimate_hidden] run function rpg:level/system/ultimate_hidden

execute if entity @e[tag=rpg_ultimate] run function rpg:level/system/ultimate
execute as @a[advancements={rpg:level/hurt_by_ultimate_mob=true},limit=1] at @s run function rpg:level/system/ultimate/hurt
advancement revoke @s only rpg:level/hurt_by_ultimate_mob
scoreboard players remove @e[tag=rpg_ultimate_thunder] rpg_ultimate_thunder_delay 1
execute as @e[tag=rpg_ultimate_thunder,scores={rpg_ultimate_thunder_delay=0},limit=1] at @s run function rpg:level/system/ultimate/thunder