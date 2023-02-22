item replace entity @e[type=armor_stand,tag=gacha_utils,limit=1] weapon.mainhand from entity @s weapon.offhand
function gacha:utils/use_cube
item replace entity @e[type=armor_stand,tag=gacha_utils,limit=1] weapon.offhand from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=gacha_utils,limit=1] weapon.mainhand
item replace entity @s weapon.offhand from entity @e[type=armor_stand,tag=gacha_utils,limit=1] weapon.offhand

clear @s #gacha:items{cube:0} 1

execute at @s run function gacha:cube/system/cube/loop/sound

tag @s remove waitfor__gacha_cube
execute as @e[tag=waitfor__gacha_cube,limit=1] run function gacha:cube/system/cube/loop