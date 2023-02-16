execute if data entity @s HandItems[0].tag.rank run function gacha:utils/private/remove/starforce

# try upgrade
execute store result score @s gacha_item_starforce_level run data get entity @s HandItems[0].tag.starforce.level
loot replace entity @s weapon.offhand fish gacha:starforce_prob ~ ~ ~

scoreboard players set @s random 100
function random:generate
#level up
execute store result score .temp gacha_virtual_data run data get entity @s HandItems[1].tag.percent[0]
execute if score @s random_data matches 0.. if score @s random_data < .temp gacha_virtual_data run function gacha:utils/private/do_starforce/action/level_up
scoreboard players operation @s random_data -= .temp gacha_virtual_data
#keep level
execute store result score .temp gacha_virtual_data run data get entity @s HandItems[1].tag.percent[1]
execute if score @s random_data matches 0.. if score @s random_data < .temp gacha_virtual_data run function gacha:utils/private/do_starforce/action/level_keep
scoreboard players operation @s random_data -= .temp gacha_virtual_data
#level down
execute store result score .temp gacha_virtual_data run data get entity @s HandItems[1].tag.percent[2]
execute if score @s random_data matches 0.. if score @s random_data < .temp gacha_virtual_data run function gacha:utils/private/do_starforce/action/level_down
scoreboard players operation @s random_data -= .temp gacha_virtual_data
#break
execute store result score .temp gacha_virtual_data run data get entity @s HandItems[1].tag.percent[3]
execute if score @s random_data matches 0.. if score @s random_data < .temp gacha_virtual_data run function gacha:utils/private/do_starforce/action/break
scoreboard players operation @s random_data -= .temp gacha_virtual_data

#ui
function gacha:utils/private/do_starforce/ui

