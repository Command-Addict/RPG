scoreboard objectives add rpg_virtual_data dummy
scoreboard objectives add rpg_bow_used minecraft.used:minecraft.bow
scoreboard objectives add rpg_crossbow_used minecraft.used:minecraft.crossbow
scoreboard objectives add rpg_entity_level dummy

execute in rpg:cmd_addict run forceload add 0 0
execute in rpg:cmd_addict run setblock 0 0 0 acacia_sign

summon marker ~ ~ ~ {Tags:["rpg_check_worldspawn"]}
execute store result score .worldspawn_x rpg_virtual_data run data get entity @e[tag=rpg_check_worldspawn,limit=1] Pos[0]
execute store result score .worldspawn_z rpg_virtual_data run data get entity @e[tag=rpg_check_worldspawn,limit=1] Pos[2]
kill @e[type=marker,tag=rpg_check_worldspawn]