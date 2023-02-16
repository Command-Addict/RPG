execute as @e[type=wandering_trader,tag=!gacha_updated] run function gacha:trade/system/update
execute as @e[predicate=gacha:can_trade_gacha_item,tag=!gacha_updated] run function gacha:trade/system/update
