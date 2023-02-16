execute unless score .now gacha_virtual_data < .max gacha_virtual_data run data modify storage gacha:starforce ui append from storage gacha:starforce ui_list[2]
execute if score .now gacha_virtual_data < .max gacha_virtual_data run function gacha:utils/private/do_starforce/ui/star/in_limit

scoreboard players add .now gacha_virtual_data 1
execute if score .now gacha_virtual_data < .end gacha_virtual_data run function gacha:utils/private/do_starforce/ui/star