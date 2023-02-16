item replace entity @e[type=armor_stand,tag=gacha_utils,limit=1] weapon.mainhand from entity @s weapon.offhand
function gacha:utils/use_scroll
item replace entity @e[type=armor_stand,tag=gacha_utils,limit=1] weapon.offhand from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=gacha_utils,limit=1] weapon.mainhand
item replace entity @s weapon.offhand from entity @e[type=armor_stand,tag=gacha_utils,limit=1] weapon.offhand

clear @s #gacha:items{scroll:0} 1

tag @s remove waitfor__gacha_scroll
execute as @e[tag=waitfor__gacha_scroll,limit=1] run function gacha:cube/system/scroll/loop