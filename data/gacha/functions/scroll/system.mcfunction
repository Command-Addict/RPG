scoreboard players set @a[predicate=gacha:scroll/potential/ready] gacha_ready 3
execute if entity @a[predicate=gacha:scroll/potential/trigger] run function gacha:scroll/system/potential

scoreboard players set @a[predicate=gacha:scroll/protection/ready] gacha_ready 4
execute if entity @a[predicate=gacha:scroll/protection/trigger] run function gacha:scroll/system/protection

execute as @a[scores={gacha_ready=3..4}] unless predicate gacha:scroll/potential/ready unless predicate gacha:scroll/protection/ready run scoreboard players set @s gacha_ready 0
