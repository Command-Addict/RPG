tag @s add has_starforce__mainhand
execute if score .value gacha_virtual_data matches 200.. run scoreboard players set .value gacha_virtual_data 200
execute if score .value gacha_virtual_data matches 128.. run attribute @s minecraft:generic.attack_damage modifier add df0ae6ac-8307-4fa7-ab5d-962606b1a34d "gacha starforce mainhand-0.640000" 0.640000 multiply_base
execute if score .value gacha_virtual_data matches 128.. run scoreboard players remove .value gacha_virtual_data 128
execute if score .value gacha_virtual_data matches 64.. run attribute @s minecraft:generic.attack_damage modifier add 9777be35-a12e-4f2a-9e9b-719d1decc3c7 "gacha starforce mainhand-0.320000" 0.320000 multiply_base
execute if score .value gacha_virtual_data matches 64.. run scoreboard players remove .value gacha_virtual_data 64
execute if score .value gacha_virtual_data matches 32.. run attribute @s minecraft:generic.attack_damage modifier add 6ccbbdf4-a2bf-42f8-9037-5807259d5e74 "gacha starforce mainhand-0.160000" 0.160000 multiply_base
execute if score .value gacha_virtual_data matches 32.. run scoreboard players remove .value gacha_virtual_data 32
execute if score .value gacha_virtual_data matches 16.. run attribute @s minecraft:generic.attack_damage modifier add b58825fd-923b-4353-87a9-c5153770f07c "gacha starforce mainhand-0.080000" 0.080000 multiply_base
execute if score .value gacha_virtual_data matches 16.. run scoreboard players remove .value gacha_virtual_data 16
execute if score .value gacha_virtual_data matches 8.. run attribute @s minecraft:generic.attack_damage modifier add 5f331231-0c95-4c14-9bb0-e8dc2bba575d "gacha starforce mainhand-0.040000" 0.040000 multiply_base
execute if score .value gacha_virtual_data matches 8.. run scoreboard players remove .value gacha_virtual_data 8
execute if score .value gacha_virtual_data matches 4.. run attribute @s minecraft:generic.attack_damage modifier add c96e96e9-7494-4eb6-a58a-a41ac9d507ed "gacha starforce mainhand-0.020000" 0.020000 multiply_base
execute if score .value gacha_virtual_data matches 4.. run scoreboard players remove .value gacha_virtual_data 4
execute if score .value gacha_virtual_data matches 2.. run attribute @s minecraft:generic.attack_damage modifier add c99eeb43-7830-4a65-8f71-22cc91de9589 "gacha starforce mainhand-0.010000" 0.010000 multiply_base
execute if score .value gacha_virtual_data matches 2.. run scoreboard players remove .value gacha_virtual_data 2
execute if score .value gacha_virtual_data matches 1.. run attribute @s minecraft:generic.attack_damage modifier add 41c7b4ab-79e9-4257-9456-7f35ef754c97 "gacha starforce mainhand-0.005000" 0.005000 multiply_base
execute if score .value gacha_virtual_data matches 1.. run scoreboard players remove .value gacha_virtual_data 1
