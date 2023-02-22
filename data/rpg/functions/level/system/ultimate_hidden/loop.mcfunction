tag @s add this
execute on target if entity @s[type=player] run tag @e[tag=this,tag=rpg_ultimate_hidden] add rpg_ultimate
tag @s remove this

execute if predicate rpg:level/is_ultimate in rpg:cmd_addict run function rpg:level/system/ultimate_hidden/loop/be_ultimate

tag @s remove waitfor__rpg_ultimate_check
execute as @e[tag=waitfor__rpg_ultimate_check,limit=1] run function rpg:level/system/ultimate_hidden/loop

