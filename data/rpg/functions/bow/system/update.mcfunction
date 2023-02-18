scoreboard players set .temp rpg_virtual_data 10
execute store result score .temp rpg_virtual_data on origin run attribute @s minecraft:generic.attack_damage get 10
execute store result entity @s damage double 0.1 on origin run scoreboard players add .temp rpg_virtual_data 10

tag @s add rpg_updated_damage
execute as @e[type=#arrows,tag=!rpg_updated_damage,limit=1] run function rpg:bow/system/update
