tag @s add has_starforce__damage
execute if score .value rpg_virtual_data matches 250.. run scoreboard players set .value rpg_virtual_data 250
execute if score .value rpg_virtual_data matches 128.. run attribute @s minecraft:generic.attack_damage modifier add 8c6ade64-7af3-4d2a-9712-0f759aeadadb "gacha level damage-3.072000" 3.072000 multiply_base
execute if score .value rpg_virtual_data matches 128.. run scoreboard players remove .value rpg_virtual_data 128
execute if score .value rpg_virtual_data matches 64.. run attribute @s minecraft:generic.attack_damage modifier add ba567da1-83d6-4838-b72f-204be0556695 "gacha level damage-1.536000" 1.536000 multiply_base
execute if score .value rpg_virtual_data matches 64.. run scoreboard players remove .value rpg_virtual_data 64
execute if score .value rpg_virtual_data matches 32.. run attribute @s minecraft:generic.attack_damage modifier add 8aa5f7bf-9227-47a6-ae45-fba2d60016c4 "gacha level damage-0.768000" 0.768000 multiply_base
execute if score .value rpg_virtual_data matches 32.. run scoreboard players remove .value rpg_virtual_data 32
execute if score .value rpg_virtual_data matches 16.. run attribute @s minecraft:generic.attack_damage modifier add f6f4bc80-9baf-41cd-abe2-f1e016856485 "gacha level damage-0.384000" 0.384000 multiply_base
execute if score .value rpg_virtual_data matches 16.. run scoreboard players remove .value rpg_virtual_data 16
execute if score .value rpg_virtual_data matches 8.. run attribute @s minecraft:generic.attack_damage modifier add 280d06d7-e977-493f-b2f7-166ed79eacbd "gacha level damage-0.192000" 0.192000 multiply_base
execute if score .value rpg_virtual_data matches 8.. run scoreboard players remove .value rpg_virtual_data 8
execute if score .value rpg_virtual_data matches 4.. run attribute @s minecraft:generic.attack_damage modifier add 3b38e119-0d12-4269-aa66-42a0bcfaa217 "gacha level damage-0.096000" 0.096000 multiply_base
execute if score .value rpg_virtual_data matches 4.. run scoreboard players remove .value rpg_virtual_data 4
execute if score .value rpg_virtual_data matches 2.. run attribute @s minecraft:generic.attack_damage modifier add 2d62c396-24cf-4d12-85d9-b589c954fb66 "gacha level damage-0.048000" 0.048000 multiply_base
execute if score .value rpg_virtual_data matches 2.. run scoreboard players remove .value rpg_virtual_data 2
execute if score .value rpg_virtual_data matches 1.. run attribute @s minecraft:generic.attack_damage modifier add 52d0aa2b-4003-4747-8403-89d7cd586119 "gacha level damage-0.024000" 0.024000 multiply_base
execute if score .value rpg_virtual_data matches 1.. run scoreboard players remove .value rpg_virtual_data 1
