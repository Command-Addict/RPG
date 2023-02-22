data modify entity @s HandItems[0].tag.rank set value 0

scoreboard players set @s gacha_item_ability_order 0
scoreboard players set @s gacha_item_rank 0

loot replace entity @s weapon.offhand fish gacha:rank ~ ~ ~
data modify storage gacha:ui name set from entity @s HandItems[1].tag.ui
function gacha:utils/private/use_cube/ui/rank

# from function gacha:utils/private/use_cube
scoreboard players set @s gacha_item_ability_order 0
scoreboard players set .rank gacha_virtual_data 0
data modify entity @s HandItems[0].tag.ability set value []

function gacha:utils/private/use_cube/add_ability
function gacha:utils/private/use_cube/add_ability
function gacha:utils/private/use_cube/add_ability

# for starforce
loot replace entity @s weapon.offhand fish gacha:starforce_data ~ ~ ~
data modify entity @s HandItems[0].tag.starforce set from entity @s HandItems[1].tag.starforce

scoreboard players set @s gacha_item_starforce_level 0

function gacha:utils/private/do_starforce/ui