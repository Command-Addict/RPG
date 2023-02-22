tag @s remove rpg_ultimate_hidden

attribute @s minecraft:generic.armor base set 30
attribute @s minecraft:generic.armor_toughness base set 20

scoreboard players operation .value rpg_virtual_data = @s rpg_entity_level

data merge block 0 0 0 {Text1:'[{"text":"","color":"red"},"Level ",{"score":{"name": ".value","objective": "rpg_virtual_data"}}]'} 
data modify entity @s CustomName set from block 0 0 0 Text1

team join rpg.ultimate @s

data modify entity @s ArmorItems[1] set value {id:"minecraft:mojang_banner_pattern",Count:1b,tag:{scroll:1,display:{Name:"{\"text\":\"Protection scroll\",\"color\":\"green\",\"italic\":false}",Lore:["{\"text\":\"Swap hands to use\",\"color\":\"gray\",\"italic\":false}"]},Enchantments:[{}]}}

execute store result score @s rpg_entity_max_health run attribute @s minecraft:generic.max_health get 10
effect give @s minecraft:glowing infinite 1 true