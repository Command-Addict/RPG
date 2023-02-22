summon marker ~ ~ ~ {Tags:["rpg_ultimate_thunder","this"]}
execute store result entity @e[tag=rpg_ultimate_thunder,tag=this,limit=1] data.percent int 0.4 run scoreboard players get @s rpg_entity_level
scoreboard players set @e[tag=rpg_ultimate_thunder,tag=this,limit=1] rpg_ultimate_thunder_delay 60
particle minecraft:witch ~ ~ ~ 0.5 0.5 0.5 1 100 force
playsound minecraft:entity.allay.death ambient @a ~ ~ ~ 3 2 0

tag @e[tag=rpg_ultimate_thunder,tag=this,limit=1] remove this
scoreboard players set @s rpg_ultimate_thunder_delay 40
execute store result score .health rpg_virtual_data run data get entity @s Health 40
execute if score @s rpg_entity_max_health >= health rpg_virtual_data run scoreboard players remove @s rpg_ultimate_thunder_delay 20