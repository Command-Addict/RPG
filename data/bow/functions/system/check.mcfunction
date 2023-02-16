data modify storage bow:check uuid set from entity @s UUID
execute store result score .power gacha_virtual_data run attribute @s generic.attack_damage get 5
execute as @e[sort=nearest,limit=1,type=#arrows,nbt={HasBeenShot:0b},tag=!donefor__check_arrow] run function bow:system/check/loop

tag @e[type=#arrows,tag=donefor__check_arrow] remove donefor__check_arrow

scoreboard players set @s rpg_bow_used 0
scoreboard players set @s rpg_crossbow_used 0
execute as @a[predicate=bow:used,limit=1] at @s run function bow:system/check/loop
