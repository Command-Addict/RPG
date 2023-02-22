execute store result entity @s HandItems[0].tag.starforce.level int 1 run scoreboard players remove @s gacha_item_starforce_level 1
loot replace entity @s weapon.offhand fish gacha:starforce_prob ~ ~ ~
execute store result score .temp gacha_virtual_data run data get entity @s HandItems[1].tag.percent[3]

execute unless score .temp gacha_virtual_data matches 0 run function gacha:utils/private/do_starforce/action/destory/down/loop
