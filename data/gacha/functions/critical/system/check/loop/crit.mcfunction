execute store result score .value gacha_virtual_data run attribute @s generic.attack_damage get
scoreboard players operation .value gacha_virtual_data *= @s gacha_critical_damage
scoreboard players operation .value gacha_virtual_data /= #100 gacha_virtual_data

execute if score .value gacha_virtual_data matches 10240.. run scoreboard players set .value gacha_virtual_data 10240
execute if score .value gacha_virtual_data matches 8192.. run attribute @s minecraft:generic.attack_damage modifier add f4296a07-6ddd-42a0-8ec6-efcdbbeb4e66 "gacha crit-819.200000" 819.200000 add
execute if score .value gacha_virtual_data matches 8192.. run scoreboard players remove .value gacha_virtual_data 8192
execute if score .value gacha_virtual_data matches 4096.. run attribute @s minecraft:generic.attack_damage modifier add 003c10b4-7c5b-4ded-b341-1d63ca9562fe "gacha crit-409.600000" 409.600000 add
execute if score .value gacha_virtual_data matches 4096.. run scoreboard players remove .value gacha_virtual_data 4096
execute if score .value gacha_virtual_data matches 2048.. run attribute @s minecraft:generic.attack_damage modifier add 5e609635-c248-466d-bed6-0f8ea97e5eee "gacha crit-204.800000" 204.800000 add
execute if score .value gacha_virtual_data matches 2048.. run scoreboard players remove .value gacha_virtual_data 2048
execute if score .value gacha_virtual_data matches 1024.. run attribute @s minecraft:generic.attack_damage modifier add 79b3a6fa-3470-449a-8cc8-a60a5d49fb81 "gacha crit-102.400000" 102.400000 add
execute if score .value gacha_virtual_data matches 1024.. run scoreboard players remove .value gacha_virtual_data 1024
execute if score .value gacha_virtual_data matches 512.. run attribute @s minecraft:generic.attack_damage modifier add 127be12f-95ba-4701-bc7d-cd94622b153d "gacha crit-51.200000" 51.200000 add
execute if score .value gacha_virtual_data matches 512.. run scoreboard players remove .value gacha_virtual_data 512
execute if score .value gacha_virtual_data matches 256.. run attribute @s minecraft:generic.attack_damage modifier add 5ab7fe3c-1889-4434-a8a6-407cba558ca7 "gacha crit-25.600000" 25.600000 add
execute if score .value gacha_virtual_data matches 256.. run scoreboard players remove .value gacha_virtual_data 256
execute if score .value gacha_virtual_data matches 128.. run attribute @s minecraft:generic.attack_damage modifier add 0f87589e-e5f8-4903-a7b4-b0b903025ca9 "gacha crit-12.800000" 12.800000 add
execute if score .value gacha_virtual_data matches 128.. run scoreboard players remove .value gacha_virtual_data 128
execute if score .value gacha_virtual_data matches 64.. run attribute @s minecraft:generic.attack_damage modifier add 1bc09167-2a5d-4d96-aee5-ad7d75b4993a "gacha crit-6.400000" 6.400000 add
execute if score .value gacha_virtual_data matches 64.. run scoreboard players remove .value gacha_virtual_data 64
execute if score .value gacha_virtual_data matches 32.. run attribute @s minecraft:generic.attack_damage modifier add f4dec3ca-dc0a-4b9d-b44a-cb4993aa5a73 "gacha crit-3.200000" 3.200000 add
execute if score .value gacha_virtual_data matches 32.. run scoreboard players remove .value gacha_virtual_data 32
execute if score .value gacha_virtual_data matches 16.. run attribute @s minecraft:generic.attack_damage modifier add 6f6a145c-d8f1-436b-a6fa-6304a6f86deb "gacha crit-1.600000" 1.600000 add
execute if score .value gacha_virtual_data matches 16.. run scoreboard players remove .value gacha_virtual_data 16
execute if score .value gacha_virtual_data matches 8.. run attribute @s minecraft:generic.attack_damage modifier add 0347eb99-cdc1-4f02-bc99-ec1db88b5128 "gacha crit-0.800000" 0.800000 add
execute if score .value gacha_virtual_data matches 8.. run scoreboard players remove .value gacha_virtual_data 8
execute if score .value gacha_virtual_data matches 4.. run attribute @s minecraft:generic.attack_damage modifier add 5b0d1b4e-92f8-410f-af45-54d28cbdfa66 "gacha crit-0.400000" 0.400000 add
execute if score .value gacha_virtual_data matches 4.. run scoreboard players remove .value gacha_virtual_data 4
execute if score .value gacha_virtual_data matches 2.. run attribute @s minecraft:generic.attack_damage modifier add 8f4d77d7-9a70-4b3d-99c5-66d800b35352 "gacha crit-0.200000" 0.200000 add
execute if score .value gacha_virtual_data matches 2.. run scoreboard players remove .value gacha_virtual_data 2
execute if score .value gacha_virtual_data matches 1.. run attribute @s minecraft:generic.attack_damage modifier add b7266ab9-aee4-4749-b78a-ec5b2773eb8c "gacha crit-0.100000" 0.100000 add
execute if score .value gacha_virtual_data matches 1.. run scoreboard players remove .value gacha_virtual_data 1

tag @s add has_crit_state