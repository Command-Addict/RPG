loot replace entity @s weapon.offhand fish gacha:starforce_prob ~ ~ ~
execute store result score .cost gacha_virtual_data run data get entity @s HandItems[1].tag.cost
execute store result score .max gacha_virtual_data run data get entity @s HandItems[0].tag.starforce.max
execute store result score .level gacha_virtual_data run data get entity @s HandItems[0].tag.starforce.level

execute if score .level gacha_virtual_data < .max gacha_virtual_data if score .cost gacha_virtual_data <= .count gacha_virtual_data run scoreboard players set .pass gacha_virtual_data 1