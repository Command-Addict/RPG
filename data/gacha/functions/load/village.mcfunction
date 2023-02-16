
execute store success score .check gacha_virtual_data store result score .temp gacha_virtual_data run locate structure village_desert
execute if score .check gacha_virtual_data matches 1 run scoreboard players operation .distance gacha_virtual_data < .temp gacha_virtual_data
execute store success score .check gacha_virtual_data store result score .temp gacha_virtual_data run locate structure village_plains
execute if score .check gacha_virtual_data matches 1 run scoreboard players operation .distance gacha_virtual_data < .temp gacha_virtual_data
execute store success score .check gacha_virtual_data store result score .temp gacha_virtual_data run locate structure village_savanna
execute if score .check gacha_virtual_data matches 1 run scoreboard players operation .distance gacha_virtual_data < .temp gacha_virtual_data
execute store success score .check gacha_virtual_data store result score .temp gacha_virtual_data run locate structure village_snowy
execute if score .check gacha_virtual_data matches 1 run scoreboard players operation .distance gacha_virtual_data < .temp gacha_virtual_data
execute store success score .check gacha_virtual_data store result score .temp gacha_virtual_data run locate structure village_taiga
execute if score .check gacha_virtual_data matches 1 run scoreboard players operation .distance gacha_virtual_data < .temp gacha_virtual_data

execute unless score .distance gacha_virtual_data matches ..160 run place structure minecraft:village_plains
scoreboard players set .loaded_village gacha_virtual_data 1