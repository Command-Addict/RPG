execute unless data entity @s HandItems[0].tag{Unbreakable:1b} run function gacha:utils/private/do_starforce/action/destory/down
execute if data entity @s HandItems[0].tag{Unbreakable:1b} run data remove entity @s HandItems[0].tag.Unbreakable

scoreboard players set .destory gacha_virtual_data 1