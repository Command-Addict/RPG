scoreboard players set .pass gacha_virtual_data 0
execute as @e[type=armor_stand,tag=gacha_utils] if data entity @s HandItems[0].tag.rank in gacha:space run function gacha:utils/private/check_starforce_cost
