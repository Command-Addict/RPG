scoreboard players set .pass gacha_virtual_data 0
function gacha:utils/check_item_safe
execute if score .safe gacha_virtual_data matches 1 as @e[type=armor_stand,tag=gacha_utils,limit=1] if data entity @s HandItems[0].tag.rank in gacha:cmd_addict run function gacha:utils/private/check_starforce_cost
