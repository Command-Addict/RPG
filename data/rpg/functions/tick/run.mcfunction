execute store result score .temp rpg_virtual_data if entity @e[type=armor_stand,tag=rpg_utils]
execute if score .temp rpg_virtual_data matches 2.. run function rpg:tick/remove_rpg_utils
execute if score .temp rpg_virtual_data matches 0 in rpg:cmd_addict run summon armor_stand 0 0 0 {Tags:["rpg_utils"],NoGravity:1b}

function rpg:bow/system
function rpg:level/system