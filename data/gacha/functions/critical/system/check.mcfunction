tag @a[scores={gacha_critical=1..}] add waitfor__gacha_critical_check
execute as @a[tag=waitfor__gacha_critical_check,limit=1] run function gacha:critical/system/check/loop 