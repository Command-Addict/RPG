execute store result score @s gacha_item_starforce_level run data get entity @s HandItems[0].tag.starforce.level
loot replace entity @s weapon.offhand fish gacha:starforce_value ~ ~ ~
execute store result score .value gacha_virtual_data run data get entity @s HandItems[1].tag.value
