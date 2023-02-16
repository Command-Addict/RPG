function gacha:utils/private/remove/rank

execute store result score @s gacha_item_rank run data get entity @s HandItems[0].tag.rank
execute store result entity @s HandItems[0].tag.rank int 1 run scoreboard players add @s gacha_item_rank 1

loot replace entity @s weapon.offhand fish gacha:rank ~ ~ ~
data modify storage gacha:ui name set from entity @s HandItems[1].tag.ui
function gacha:utils/private/use_cube/ui/rank

loot replace entity @s weapon.offhand fish gacha:starforce_data ~ ~ ~
data modify entity @s HandItems[0].tag.starforce set from entity @s HandItems[1].tag.starforce