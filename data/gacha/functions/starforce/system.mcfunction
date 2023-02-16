scoreboard players set @a[predicate=gacha:starforce/ready] gacha_ready 3
execute if entity @a[predicate=gacha:starforce/trigger] run function gacha:starforce/system/starforce

execute as @a[scores={gacha_ready=3}] unless predicate gacha:starforce/ready run scoreboard players set @s gacha_ready 0

execute as @a[tag=has_starforce] run function gacha:utils/reset_starforce
execute if entity @a[predicate=gacha:has_rank_item] in gacha:space run function gacha:starforce/system/apply