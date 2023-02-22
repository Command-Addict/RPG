item replace entity @e[type=armor_stand,tag=gacha_utils,limit=1] weapon.mainhand from entity @s weapon.offhand
function gacha:utils/do_starforce
item replace entity @e[type=armor_stand,tag=gacha_utils,limit=1] weapon.offhand from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=gacha_utils,limit=1] weapon.mainhand
item replace entity @s weapon.offhand from entity @e[type=armor_stand,tag=gacha_utils,limit=1] weapon.offhand

execute if score .pass gacha_virtual_data matches 1 at @s run function gacha:starforce/system/starforce/loop/sound

tag @s remove waitfor__gacha_starforce
execute as @e[tag=waitfor__gacha_starforce,limit=1] run function gacha:starforce/system/starforce/loop