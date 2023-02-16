scoreboard players set .value gacha_virtual_data 0
execute as @e[type=armor_stand,tag=gacha_utils] if data entity @s HandItems[0].tag.starforce.level run function gacha:starforce/system/apply/loop/private/get_value
