loot replace entity @s weapon.offhand fish gacha:starforce_prob ~ ~ ~

data modify storage gacha:starforce icon set from entity @s HandItems[1].tag.ui
data modify storage gacha:starforce percent set from entity @s HandItems[1].tag.percent

data modify storage gacha:starforce ui set value []
data modify storage gacha:starforce num set value []
execute if data storage gacha:starforce icon[0] run function gacha:utils/private/do_starforce/ui/percent/loop
data modify storage gacha:starforce cost set from entity @s HandItems[1].tag.cost
data merge block 0 0 0 {Text1:"[{\"text\":\"\",\"color\":\"dark_gray\"},{\"storage\":\"gacha:starforce\",\"nbt\":\"ui[0]\"},{\"storage\":\"gacha:starforce\",\"nbt\":\"ui[1]\"},{\"storage\":\"gacha:starforce\",\"nbt\":\"num[0]\"},{\"storage\":\"gacha:starforce\",\"nbt\":\"ui[2]\"},{\"storage\":\"gacha:starforce\",\"nbt\":\"ui[3]\"},{\"storage\":\"gacha:starforce\",\"nbt\":\"ui[4]\"},{\"storage\":\"gacha:starforce\",\"nbt\":\"num[1]\"},{\"storage\":\"gacha:starforce\",\"nbt\":\"ui[5]\"},{\"storage\":\"gacha:starforce\",\"nbt\":\"ui[6]\"},{\"storage\":\"gacha:starforce\",\"nbt\":\"ui[7]\"},{\"storage\":\"gacha:starforce\",\"nbt\":\"num[2]\"},{\"storage\":\"gacha:starforce\",\"nbt\":\"ui[8]\"},{\"storage\":\"gacha:starforce\",\"nbt\":\"ui[9]\"},{\"storage\":\"gacha:starforce\",\"nbt\":\"ui[10]\"},{\"storage\":\"gacha:starforce\",\"nbt\":\"num[3]\"},{\"storage\":\"gacha:starforce\",\"nbt\":\"ui[11]\"},\"[\",{\"storage\":\"gacha:starforce\",\"nbt\":\"cost\"},\"]\"]"}
data modify entity @s HandItems[0].tag.display.Lore append from block 0 0 0 Text1

scoreboard players add .line gacha_virtual_data 1