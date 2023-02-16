item replace entity @e[type=armor_stand,tag=gacha_utils,limit=1] weapon.mainhand from entity @s armor.head
function gacha:starforce/system/apply/loop/get_value
scoreboard players operation .temp gacha_virtual_data = .value gacha_virtual_data
item replace entity @e[type=armor_stand,tag=gacha_utils,limit=1] weapon.mainhand from entity @s armor.chest
function gacha:starforce/system/apply/loop/get_value
scoreboard players operation .temp gacha_virtual_data += .value gacha_virtual_data
item replace entity @e[type=armor_stand,tag=gacha_utils,limit=1] weapon.mainhand from entity @s armor.legs
function gacha:starforce/system/apply/loop/get_value
scoreboard players operation .temp gacha_virtual_data += .value gacha_virtual_data
item replace entity @e[type=armor_stand,tag=gacha_utils,limit=1] weapon.mainhand from entity @s armor.feet
function gacha:starforce/system/apply/loop/get_value
scoreboard players operation .value gacha_virtual_data += .temp gacha_virtual_data
execute if score .value gacha_virtual_data matches 1.. run function gacha:starforce/system/apply/loop/armor

item replace entity @e[type=armor_stand,tag=gacha_utils,limit=1] weapon.mainhand from entity @s weapon.mainhand
function gacha:starforce/system/apply/loop/get_value
execute if score .value gacha_virtual_data matches 1.. run function gacha:starforce/system/apply/loop/mainhand

tag @s add has_starforce

tag @s remove waitfor__gacha_apply_starforce
execute as @a[tag=waitfor__gacha_apply_starforce,limit=1] run function gacha:starforce/system/apply/loop
