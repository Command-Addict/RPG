execute if data entity @s HandItems[0].tag.rank run function gacha:utils/private/remove/starforce
execute if data entity @s HandItems[0].tag.rank run function gacha:utils/private/remove/abilities
execute if data entity @s HandItems[0].tag.rank if predicate gacha:prob/rank_up run function gacha:utils/private/use_cube/rank_up

scoreboard players set @s gacha_item_ability_order 0
execute store result score .rank gacha_virtual_data store result score @s gacha_item_rank run data get entity @s HandItems[0].tag.rank
data modify entity @s HandItems[0].tag.ability set value []

function gacha:utils/private/use_cube/add_ability
function gacha:utils/private/use_cube/add_ability
function gacha:utils/private/use_cube/add_ability

function gacha:utils/private/do_starforce/ui