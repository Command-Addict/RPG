execute if score @s gacha_item_rank matches 0 run data merge block 0 0 0 {Text1:"[{\"text\":\"[\",\"color\":\"aqua\"},{\"nbt\":\"name\",\"storage\":\"gacha:ui\"},\"]\"]"}
execute if score @s gacha_item_rank matches 1 run data merge block 0 0 0 {Text1:"[{\"text\":\"[\",\"color\":\"light_purple\"},{\"nbt\":\"name\",\"storage\":\"gacha:ui\"},\"]\"]"}
execute if score @s gacha_item_rank matches 2 run data merge block 0 0 0 {Text1:"[{\"text\":\"[\",\"color\":\"yellow\"},{\"nbt\":\"name\",\"storage\":\"gacha:ui\"},\"]\"]"}
execute if score @s gacha_item_rank matches 3 run data merge block 0 0 0 {Text1:"[{\"text\":\"[\",\"color\":\"green\"},{\"nbt\":\"name\",\"storage\":\"gacha:ui\"},\"]\"]"}

data modify entity @s HandItems[0].tag.display.Lore append from block 0 0 0 Text1