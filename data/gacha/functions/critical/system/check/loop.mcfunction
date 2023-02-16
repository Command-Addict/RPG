scoreboard players set @s random 1000

function random:generate
execute if score @s random_data < @s gacha_critical run function gacha:critical/system/check/loop/crit

tag @s remove waitfor__gacha_critical_check
execute as @a[tag=waitfor__gacha_critical_check,limit=1] run function gacha:critical/system/check/loop 