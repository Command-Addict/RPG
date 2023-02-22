item replace entity @e[type=armor_stand,tag=gacha_utils,limit=1] weapon.mainhand from entity @s weapon.offhand
data modify entity @e[type=armor_stand,tag=gacha_utils,limit=1] HandItems[0].tag.Unbreakable set value 1b
item replace entity @e[type=armor_stand,tag=gacha_utils,limit=1] weapon.offhand from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=gacha_utils,limit=1] weapon.mainhand
item replace entity @s weapon.offhand from entity @e[type=armor_stand,tag=gacha_utils,limit=1] weapon.offhand

clear @s #gacha:items{scroll:1} 1

execute at @s run function gacha:scroll/system/sound

tag @s remove waitfor__gacha_scroll
execute as @e[tag=waitfor__gacha_scroll,limit=1] run function gacha:scroll/system/protection/loop