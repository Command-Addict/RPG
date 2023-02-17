execute store result score .count gacha_virtual_data run clear @s minecraft:emerald 0
function gacha:utils/check_starforce_cost
execute as @e[type=armor_stand,tag=gacha_utils,limit=1] if score .pass gacha_virtual_data matches 1 in gacha:space run function gacha:utils/private/do_starforce

execute if score .pass gacha_virtual_data matches 1 if score .cost gacha_virtual_data matches 1.. run function gacha:utils/private/do_starforce/pay