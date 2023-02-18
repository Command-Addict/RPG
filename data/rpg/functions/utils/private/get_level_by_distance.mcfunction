execute store result score .start rpg_virtual_data run data get entity @s HandItems[1].tag.range[0]
execute store result score .end rpg_virtual_data run data get entity @s HandItems[1].tag.range[1]

execute store result score @s random run scoreboard players add .end rpg_virtual_data 1
scoreboard players operation @s random -= .start rpg_virtual_data
function random:generate

execute store result score .value rpg_virtual_data run scoreboard players operation @s random_data += .start rpg_virtual_data