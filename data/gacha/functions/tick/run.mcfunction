execute store result score .temp gacha_virtual_data if entity @e[type=armor_stand,tag=gacha_utils]
execute if score .temp gacha_virtual_data matches 2.. run function gacha:tick/remove_gacha_utils
execute if score .temp gacha_virtual_data matches 0 in gacha:cmd_addict run summon armor_stand 0 0 0 {Tags:["gacha_utils"],NoGravity:1b}

function gacha:scroll/system
function gacha:cube/system
function gacha:starforce/system

function gacha:critical/system

function gacha:trade/system