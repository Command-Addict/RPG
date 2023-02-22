execute store result score .percent rpg_virtual_data run data get entity @s data.percent

tag @s add this
execute positioned ~-4 ~-4 ~-4 as @a[dx=9,dy=9,dz=9] run tag @s add target
execute as @p[tag=target] run function rpg:level/system/ultimate/thunder/loop

particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.firework_rocket.blast ambient @a ~ ~ ~ 3 0 0

kill @s
execute as @e[tag=rpg_ultimate_thunder,scores={rpg_ultimate_thunder_delay=0},limit=1] at @s run function rpg:level/system/ultimate/thunder