item replace entity @s weapon.offhand from entity @s weapon.mainhand
item modify entity @s weapon.offhand gacha:starforce/break
execute store success score .safe gacha_virtual_data run data modify entity @s HandItems[1].tag.Damage set from entity @s HandItems[0].tag.Damage 
