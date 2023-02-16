execute as @a unless score @s gacha_critical matches -2147483648..2147483647 run function gacha:critical/system/reset

execute as @a[tag=has_crit_state] run function gacha:critical/system/remove
execute if entity @a[scores={gacha_critical=1..}] run function gacha:critical/system/check