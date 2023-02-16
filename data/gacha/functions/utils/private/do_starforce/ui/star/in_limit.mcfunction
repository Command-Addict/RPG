execute if score .now gacha_virtual_data < @s gacha_item_starforce_level run data modify storage gacha:starforce ui append from storage gacha:starforce ui_list[0]
execute unless score .now gacha_virtual_data < @s gacha_item_starforce_level run data modify storage gacha:starforce ui append from storage gacha:starforce ui_list[1]
