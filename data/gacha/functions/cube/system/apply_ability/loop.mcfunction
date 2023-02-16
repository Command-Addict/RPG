execute store success score .temp gacha_virtual_data run data modify storage gacha:ability abilities set from entity @s Inventory[{Slot:100b}].tag.ability
execute if score .temp gacha_virtual_data matches 1 run function gacha:cube/system/apply_ability/loop/save
execute store success score .temp gacha_virtual_data run data modify storage gacha:ability abilities set from entity @s Inventory[{Slot:101b}].tag.ability
execute if score .temp gacha_virtual_data matches 1 run function gacha:cube/system/apply_ability/loop/save
execute store success score .temp gacha_virtual_data run data modify storage gacha:ability abilities set from entity @s Inventory[{Slot:102b}].tag.ability
execute if score .temp gacha_virtual_data matches 1 run function gacha:cube/system/apply_ability/loop/save
execute store success score .temp gacha_virtual_data run data modify storage gacha:ability abilities set from entity @s Inventory[{Slot:103b}].tag.ability
execute if score .temp gacha_virtual_data matches 1 run function gacha:cube/system/apply_ability/loop/save
execute store success score .temp gacha_virtual_data run data modify storage gacha:ability abilities set from entity @s SelectedItem.tag.ability
execute if score .temp gacha_virtual_data matches 1 run function gacha:cube/system/apply_ability/loop/save

# power
tag @e[type=marker,tag=gacha_ability,scores={gacha_virtual_data=0}] add this
execute if entity @e[type=marker,tag=gacha_ability,tag=this] run function gacha:cube/system/apply_ability/loop/apply/power
#speed
tag @e[type=marker,tag=gacha_ability,scores={gacha_virtual_data=1}] add this
execute if entity @e[type=marker,tag=gacha_ability,tag=this] run function gacha:cube/system/apply_ability/loop/apply/speed
#hp
tag @e[type=marker,tag=gacha_ability,scores={gacha_virtual_data=2}] add this
execute if entity @e[type=marker,tag=gacha_ability,tag=this] run function gacha:cube/system/apply_ability/loop/apply/hp
#critical
tag @e[type=marker,tag=gacha_ability,scores={gacha_virtual_data=3}] add this
execute if entity @e[type=marker,tag=gacha_ability,tag=this] run function gacha:cube/system/apply_ability/loop/apply/critical
#critical
tag @e[type=marker,tag=gacha_ability,scores={gacha_virtual_data=4}] add this
execute if entity @e[type=marker,tag=gacha_ability,tag=this] run function gacha:cube/system/apply_ability/loop/apply/critical_damage
#critical
tag @e[type=marker,tag=gacha_ability,scores={gacha_virtual_data=5}] add this
execute if entity @e[type=marker,tag=gacha_ability,tag=this] run function gacha:cube/system/apply_ability/loop/apply/knockback_resistance

tag @s add has_ability

tag @s remove waitfor__gacha_apply_ability
execute as @a[tag=waitfor__gacha_apply_ability,limit=1] run function gacha:cube/system/apply_ability/loop
