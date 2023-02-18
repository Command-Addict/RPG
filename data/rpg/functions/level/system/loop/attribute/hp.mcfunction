tag @s add has_starforce__hp
execute if score .value rpg_virtual_data matches 250.. run scoreboard players set .value rpg_virtual_data 250
execute if score .value rpg_virtual_data matches 128.. run attribute @s minecraft:generic.max_health modifier add 2bc24a7f-818f-4db1-8ce1-5806e57726c5 "gacha level hp-3.072000" 3.072000 multiply_base
execute if score .value rpg_virtual_data matches 128.. run scoreboard players remove .value rpg_virtual_data 128
execute if score .value rpg_virtual_data matches 64.. run attribute @s minecraft:generic.max_health modifier add b9a4f3a8-8333-4ffc-a55d-de25614bdf50 "gacha level hp-1.536000" 1.536000 multiply_base
execute if score .value rpg_virtual_data matches 64.. run scoreboard players remove .value rpg_virtual_data 64
execute if score .value rpg_virtual_data matches 32.. run attribute @s minecraft:generic.max_health modifier add 1dd570e0-2fd7-4118-a798-0ca566c40234 "gacha level hp-0.768000" 0.768000 multiply_base
execute if score .value rpg_virtual_data matches 32.. run scoreboard players remove .value rpg_virtual_data 32
execute if score .value rpg_virtual_data matches 16.. run attribute @s minecraft:generic.max_health modifier add b522af58-86e2-470a-b71d-3a352770aec1 "gacha level hp-0.384000" 0.384000 multiply_base
execute if score .value rpg_virtual_data matches 16.. run scoreboard players remove .value rpg_virtual_data 16
execute if score .value rpg_virtual_data matches 8.. run attribute @s minecraft:generic.max_health modifier add 5e4e3642-a812-4caa-8130-129d4eb0ae85 "gacha level hp-0.192000" 0.192000 multiply_base
execute if score .value rpg_virtual_data matches 8.. run scoreboard players remove .value rpg_virtual_data 8
execute if score .value rpg_virtual_data matches 4.. run attribute @s minecraft:generic.max_health modifier add bd2145e8-1658-4939-ab25-fa6275bc7b6c "gacha level hp-0.096000" 0.096000 multiply_base
execute if score .value rpg_virtual_data matches 4.. run scoreboard players remove .value rpg_virtual_data 4
execute if score .value rpg_virtual_data matches 2.. run attribute @s minecraft:generic.max_health modifier add acce6c3a-c801-45f1-88b4-fe0cff8dbd23 "gacha level hp-0.048000" 0.048000 multiply_base
execute if score .value rpg_virtual_data matches 2.. run scoreboard players remove .value rpg_virtual_data 2
execute if score .value rpg_virtual_data matches 1.. run attribute @s minecraft:generic.max_health modifier add 364756e6-07cf-43ac-9e8e-1d8bc9ccc0ea "gacha level hp-0.024000" 0.024000 multiply_base
execute if score .value rpg_virtual_data matches 1.. run scoreboard players remove .value rpg_virtual_data 1
