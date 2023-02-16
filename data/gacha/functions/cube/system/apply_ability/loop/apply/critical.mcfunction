function gacha:cube/system/apply_ability/loop/apply/utils/get_value

scoreboard players operation @s gacha_critical += .value gacha_virtual_data
tag @s add has_ability__critical

kill @e[type=marker,tag=gacha_ability,tag=this]