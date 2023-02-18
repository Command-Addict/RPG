scoreboard players operation .value gacha_virtual_data = @s gacha_origin_damage
scoreboard players operation .value gacha_virtual_data *= @s gacha_critical_damage

function gacha:critical/system/check/loop/crit/attribute

tag @s add has_crit_state