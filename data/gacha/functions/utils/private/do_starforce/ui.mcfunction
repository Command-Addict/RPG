execute store result score @s gacha_item_starforce_level run data get entity @s HandItems[0].tag.starforce.level
execute store result score .max gacha_virtual_data run data get entity @s HandItems[0].tag.starforce.max

scoreboard players set .now gacha_virtual_data 0

data modify storage gacha:starforce ui set value []
scoreboard players set .end gacha_virtual_data 10
function gacha:utils/private/do_starforce/ui/star
data merge block 0 0 0 {Text1:"[{\"nbt\":\"ui[0]\",\"storage\":\"gacha:starforce\",\"interpret\":true},{\"nbt\":\"ui[1]\",\"storage\":\"gacha:starforce\",\"interpret\":true},{\"nbt\":\"ui[2]\",\"storage\":\"gacha:starforce\",\"interpret\":true},{\"nbt\":\"ui[3]\",\"storage\":\"gacha:starforce\",\"interpret\":true},{\"nbt\":\"ui[4]\",\"storage\":\"gacha:starforce\",\"interpret\":true},\"  \",{\"nbt\":\"ui[5]\",\"storage\":\"gacha:starforce\",\"interpret\":true},{\"nbt\":\"ui[6]\",\"storage\":\"gacha:starforce\",\"interpret\":true},{\"nbt\":\"ui[7]\",\"storage\":\"gacha:starforce\",\"interpret\":true},{\"nbt\":\"ui[8]\",\"storage\":\"gacha:starforce\",\"interpret\":true},{\"nbt\":\"ui[9]\",\"storage\":\"gacha:starforce\",\"interpret\":true}]"}
data modify entity @s HandItems[0].tag.display.Lore append from block 0 0 0 Text1

data modify storage gacha:starforce ui set value []
scoreboard players set .end gacha_virtual_data 20
function gacha:utils/private/do_starforce/ui/star
data merge block 0 0 0 {Text1:"[{\"nbt\":\"ui[0]\",\"storage\":\"gacha:starforce\",\"interpret\":true},{\"nbt\":\"ui[1]\",\"storage\":\"gacha:starforce\",\"interpret\":true},{\"nbt\":\"ui[2]\",\"storage\":\"gacha:starforce\",\"interpret\":true},{\"nbt\":\"ui[3]\",\"storage\":\"gacha:starforce\",\"interpret\":true},{\"nbt\":\"ui[4]\",\"storage\":\"gacha:starforce\",\"interpret\":true},\"  \",{\"nbt\":\"ui[5]\",\"storage\":\"gacha:starforce\",\"interpret\":true},{\"nbt\":\"ui[6]\",\"storage\":\"gacha:starforce\",\"interpret\":true},{\"nbt\":\"ui[7]\",\"storage\":\"gacha:starforce\",\"interpret\":true},{\"nbt\":\"ui[8]\",\"storage\":\"gacha:starforce\",\"interpret\":true},{\"nbt\":\"ui[9]\",\"storage\":\"gacha:starforce\",\"interpret\":true}]"}
data modify entity @s HandItems[0].tag.display.Lore append from block 0 0 0 Text1

scoreboard players set .line gacha_virtual_data 2

execute if score @s gacha_item_starforce_level < .max gacha_virtual_data run function gacha:utils/private/do_starforce/ui/percent
execute store result entity @s HandItems[0].tag.starforce.line int 1 run scoreboard players get .line gacha_virtual_data
