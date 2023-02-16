tag @a[predicate=gacha:has_rank_item] add waitfor__gacha_apply_ability
data modify storage gacha:ability data set value []
execute as @a[tag=waitfor__gacha_apply_ability,limit=1] run function gacha:cube/system/apply_ability/loop