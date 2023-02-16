data remove entity @s HandItems[0].tag.display.Lore[-1]
scoreboard players remove .temp gacha_virtual_data 1
execute if score .temp gacha_virtual_data matches 1.. run function gacha:utils/private/remove/starforce/loop