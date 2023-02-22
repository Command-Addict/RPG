scoreboard players set @a[predicate=gacha:cube/ready] gacha_ready 1
execute if entity @a[predicate=gacha:cube/trigger] run function gacha:cube/system/cube

execute as @a[scores={gacha_ready=1}] unless predicate gacha:cube/ready run scoreboard players set @s gacha_ready 0

execute as @a[tag=has_ability] run function gacha:utils/reset_abilities
execute if entity @a[predicate=gacha:has_rank_item] in gacha:cmd_addict run function gacha:cube/system/apply_ability