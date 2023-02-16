scoreboard objectives add gacha_item_rank dummy
scoreboard objectives add gacha_item_ability_order dummy
scoreboard objectives add gacha_virtual_data dummy
scoreboard objectives add gacha_ready dummy
scoreboard objectives add gacha_critical dummy
scoreboard objectives add gacha_critical_damage dummy
scoreboard objectives add gacha_item_starforce_level dummy

scoreboard players set .default gacha_critical 200
scoreboard players set .default gacha_critical_damage 200

scoreboard players set #10 gacha_virtual_data 10
scoreboard players set #100 gacha_virtual_data 100

data merge storage gacha:starforce {ui_list:['{"text":"★","color":"gold"}','{"text":"☆","color":"gray"}','{"text":"★","color":"dark_gray"}']}

execute in gacha:space run forceload add 0 0
execute in gacha:space run setblock 0 0 0 acacia_sign
execute in gacha:space run summon marker 0 0 0 {Tags:["check_demension_loaded"]}

# option
#execute unless score .loaded_village gacha_virtual_data matches 1 run function gacha:load/village

scoreboard players set .loaded_dimension gacha_virtual_data 0
function gacha:load/wait_for_dimension