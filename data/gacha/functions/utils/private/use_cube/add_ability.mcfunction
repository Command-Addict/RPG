loot replace entity @s weapon.offhand fish gacha:cube ~ ~ ~

execute store result score .start gacha_virtual_data run data get entity @s HandItems[1].tag.range[0] 10
execute store result score .end gacha_virtual_data run data get entity @s HandItems[1].tag.range[1] 10
execute store result score @s random run scoreboard players operation .end gacha_virtual_data -= .start gacha_virtual_data
scoreboard players add @s random 1
function random:generate
scoreboard players operation @s random_data += .start gacha_virtual_data

data modify entity @s HandItems[0].tag.ability append value {id:0, value:0}
data modify entity @s HandItems[0].tag.ability[-1].id set from entity @s HandItems[1].tag.id
execute store result entity @s HandItems[0].tag.ability[-1].value int 1 run scoreboard players get @s random_data

execute store result storage gacha:ui left int 0.1 run scoreboard players get @s random_data
execute store result storage gacha:ui right int 1 run scoreboard players operation @s random_data %= #10 gacha_virtual_data

data modify storage gacha:ui name set from entity @s HandItems[1].tag.ui
data modify storage gacha:ui prefix set from entity @s HandItems[1].tag.prefix
data modify storage gacha:ui suffix set from entity @s HandItems[1].tag.suffix
function gacha:utils/private/use_cube/ui/ability

scoreboard players add @s gacha_item_ability_order 1
execute if score @s gacha_item_rank = .rank gacha_virtual_data unless predicate gacha:prob/keep_rank run scoreboard players remove @s gacha_item_rank 1
