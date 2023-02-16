loot replace entity @s weapon.mainhand fish gacha:trade ~ ~ ~
data modify entity @s Offers.Recipes append value {maxUses:32,buy:{id:"minecraft:emerald",Count:4b},sell:{id:"minecraft:air",Count:1b}}
data modify entity @s Offers.Recipes[-1].sell set from entity @s HandItems[0]
item replace entity @s weapon.mainhand with air

tag @s add gacha_updated