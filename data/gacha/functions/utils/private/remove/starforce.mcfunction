execute store result score .temp gacha_virtual_data run data get entity @s HandItems[0].tag.starforce.line
execute if score .temp gacha_virtual_data matches 1.. run function gacha:utils/private/remove/starforce/loop

