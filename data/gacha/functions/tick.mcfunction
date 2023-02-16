execute store result score .temp gacha_virtual_data if entity @e[type=armor_stand,tag=gacha_utils]
execute if score .temp gacha_virtual_data matches 0 in gacha:space run summon armor_stand 0 0 0 {Tags:["gacha_utils"],NoGravity:1b}

execute unless score .loaded_dimension gacha_virtual_data matches 0 run function gacha:cube/system
execute unless score .loaded_dimension gacha_virtual_data matches 0 run function gacha:starforce/system

execute unless score .loaded_dimension gacha_virtual_data matches 0 run function gacha:critical/system

execute unless score .loaded_dimension gacha_virtual_data matches 0 run function gacha:trade/system