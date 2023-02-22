scoreboard objectives add rpg_virtual_data dummy
scoreboard objectives add rpg_bow_used minecraft.used:minecraft.bow
scoreboard objectives add rpg_crossbow_used minecraft.used:minecraft.crossbow
scoreboard objectives add rpg_entity_level dummy
scoreboard objectives add rpg_entity_max_health dummy
scoreboard objectives add rpg_ultimate_grap_delay dummy
scoreboard objectives add rpg_ultimate_thunder_delay dummy

scoreboard players set #-1 rpg_virtual_data -1
scoreboard players set #100 rpg_virtual_data 100
scoreboard players set #500 rpg_virtual_data 500
scoreboard players set .ultimate_multiply rpg_virtual_data 10

team add rpg.ultimate
team modify rpg.ultimate color red

execute in rpg:cmd_addict run forceload add 0 0
execute in rpg:cmd_addict run setblock 0 0 0 acacia_sign

summon marker ~ ~ ~ {Tags:["rpg_check_worldspawn"]}
execute store result score .worldspawn_x rpg_virtual_data run data get entity @e[tag=rpg_check_worldspawn,limit=1] Pos[0]
execute store result score .worldspawn_z rpg_virtual_data run data get entity @e[tag=rpg_check_worldspawn,limit=1] Pos[2]
kill @e[type=marker,tag=rpg_check_worldspawn]