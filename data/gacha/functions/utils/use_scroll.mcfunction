execute as @e[type=armor_stand,tag=gacha_utils,limit=1] unless data entity @s HandItems[0].tag.rank in gacha:space run function gacha:utils/private/use_scroll
