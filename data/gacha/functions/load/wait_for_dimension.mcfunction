execute if entity @e[tag=check_demension_loaded] run function gacha:load/end
execute if score .loaded_dimension gacha_virtual_data matches 0 run schedule function gacha:load/wait_for_dimension 1t