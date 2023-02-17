loot replace entity @s weapon.mainhand fish gacha:trade ~ ~ ~
data modify entity @s Offers.Recipes append value {maxUses:16,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:air",Count:1b},priceMultiplier:0.02f}
data modify entity @s Offers.Recipes[-1].sell set from entity @s HandItems[0]
data modify entity @s Offers.Recipes[-1].buy.Count set from entity @s HandItems[0].Count
item replace entity @s weapon.mainhand with air