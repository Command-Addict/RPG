
scoreboard players set @a[predicate=gacha:potential_scroll/ready] gacha_ready 1
execute if entity @a[predicate=gacha:potential_scroll/trigger] run function gacha:cube/system/scroll

scoreboard players set @a[predicate=gacha:cube/ready] gacha_ready 2
execute if entity @a[predicate=gacha:cube/trigger] run function gacha:cube/system/cube

execute as @a[scores={gacha_ready=1..2}] unless predicate gacha:potential_scroll/ready unless predicate gacha:cube/ready run scoreboard players set @s gacha_ready 0

execute as @a[tag=has_ability] run function gacha:utils/reset_abilities
execute if entity @a[predicate=gacha:has_rank_item] in gacha:space run function gacha:cube/system/apply_ability