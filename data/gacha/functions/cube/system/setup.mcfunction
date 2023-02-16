summon armor_stand 0 0 0 {Tags:["gacha_for_cube"],NoGravity:1b}
scoreboard players add .temp gacha_virtual_data 1
execute if score .temp gacha_virtual_data matches ..8 run function gacha:cube/system/setup