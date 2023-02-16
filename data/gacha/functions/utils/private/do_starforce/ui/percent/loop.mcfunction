execute store result score .temp gacha_virtual_data run data get storage gacha:starforce percent[0]
execute unless score .temp gacha_virtual_data matches 0 run function gacha:utils/private/do_starforce/ui/percent/loop/apply

data remove storage gacha:starforce icon[0]
data remove storage gacha:starforce percent[0]
execute if data storage gacha:starforce icon[0] run function gacha:utils/private/do_starforce/ui/percent/loop
