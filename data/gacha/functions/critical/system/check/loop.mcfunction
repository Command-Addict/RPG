scoreboard players set @s random 1000

function random:generate
execute store result score @s gacha_origin_damage run attribute @s minecraft:generic.attack_damage get 10
execute if score @s random_data < @s gacha_critical run function gacha:critical/system/check/loop/crit

tag @s remove waitfor__gacha_critical_check
execute as @a[tag=waitfor__gacha_critical_check,limit=1] run function gacha:critical/system/check/loop 