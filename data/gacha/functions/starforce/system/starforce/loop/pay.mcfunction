clear @s minecraft:emerald 1
scoreboard players remove .cost gacha_virtual_data 1
execute if score .cost gacha_virtual_data matches 1.. run function gacha:starforce/system/starforce/loop/pay