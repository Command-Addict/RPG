execute if entity @s[scores={random=1..}] run scoreboard players set @s random_limit 2147483647
execute if entity @s[scores={random=1..}] run scoreboard players operation @s random_limit %= @s random
execute if entity @s[scores={random=1..}] run scoreboard players add @s random_limit 1
execute if entity @s[scores={random=0..}] run function random:algorithm/fill
execute if entity @s[scores={random=1..}] unless score @s random_limit = @s random if score @s random_data < @s random_limit run function random:generate
execute if entity @s[scores={random=1..}] run scoreboard players operation @s random_data %= @s random
