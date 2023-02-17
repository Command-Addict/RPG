tag @s add has_starforce__mainhand
execute if score .value gacha_virtual_data matches 200.. run scoreboard players set .value gacha_virtual_data 200
execute if score .value gacha_virtual_data matches 128.. run attribute @s minecraft:generic.attack_damage modifier add dc8e196c-a1a9-4f0f-97f9-8f9c1ca5ee69 "gacha starforce mainhand-6.400000" 6.400000 add
execute if score .value gacha_virtual_data matches 128.. run scoreboard players remove .value gacha_virtual_data 128
execute if score .value gacha_virtual_data matches 64.. run attribute @s minecraft:generic.attack_damage modifier add 974f20f7-5d49-4bad-a647-dfa1d2127e0b "gacha starforce mainhand-3.200000" 3.200000 add
execute if score .value gacha_virtual_data matches 64.. run scoreboard players remove .value gacha_virtual_data 64
execute if score .value gacha_virtual_data matches 32.. run attribute @s minecraft:generic.attack_damage modifier add e27a8f02-50cc-46d4-818d-024350aea93a "gacha starforce mainhand-1.600000" 1.600000 add
execute if score .value gacha_virtual_data matches 32.. run scoreboard players remove .value gacha_virtual_data 32
execute if score .value gacha_virtual_data matches 16.. run attribute @s minecraft:generic.attack_damage modifier add 077c1e68-1b5c-46d5-b01b-9d8d29f320c8 "gacha starforce mainhand-0.800000" 0.800000 add
execute if score .value gacha_virtual_data matches 16.. run scoreboard players remove .value gacha_virtual_data 16
execute if score .value gacha_virtual_data matches 8.. run attribute @s minecraft:generic.attack_damage modifier add 9370303e-d66c-4de0-bbcd-1b6d5fe3b1fe "gacha starforce mainhand-0.400000" 0.400000 add
execute if score .value gacha_virtual_data matches 8.. run scoreboard players remove .value gacha_virtual_data 8
execute if score .value gacha_virtual_data matches 4.. run attribute @s minecraft:generic.attack_damage modifier add 90a699c8-7260-4979-9f3b-24f9250f998f "gacha starforce mainhand-0.200000" 0.200000 add
execute if score .value gacha_virtual_data matches 4.. run scoreboard players remove .value gacha_virtual_data 4
execute if score .value gacha_virtual_data matches 2.. run attribute @s minecraft:generic.attack_damage modifier add e4c21528-db62-4509-b282-d1a456fb250f "gacha starforce mainhand-0.100000" 0.100000 add
execute if score .value gacha_virtual_data matches 2.. run scoreboard players remove .value gacha_virtual_data 2
execute if score .value gacha_virtual_data matches 1.. run attribute @s minecraft:generic.attack_damage modifier add e84cb737-ec8e-4b12-94bb-954ded20c99f "gacha starforce mainhand-0.050000" 0.050000 add
execute if score .value gacha_virtual_data matches 1.. run scoreboard players remove .value gacha_virtual_data 1
