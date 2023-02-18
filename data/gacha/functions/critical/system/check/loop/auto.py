import sys, uuid

path = "/".join(sys.argv[0].split('\\')[:-1])
rm_path = "/".join(sys.argv[0].split('\\')[:-3])

name, attribute, max, i, type, more = \
("crit", "minecraft:generic.attack_damage", 2048, 0.0001, "add", None)

form = """execute if score .value gacha_virtual_data matches %d.. run attribute @s %s modifier add %s "gacha crit %s-%f" %f %s
execute if score .value gacha_virtual_data matches %d.. run scoreboard players remove .value gacha_virtual_data %d
"""

scale = 1/i
max *= scale
i *= scale

fd = open(path+'/crit/attribute.mcfunction','w')
f = open(rm_path+'/remove.mcfunction','w')
f.write('tag @s remove has_crit_state\n')
r = ""

s = 0
while s < max:
    UUID = str(uuid.uuid4())
    r = form%(i, attribute, UUID, name, i/scale, i/scale, type, i, i) + r
    f.write("attribute @s %s modifier remove %s\n"%(attribute, UUID))
    s += i
    i += i

fd.write("scoreboard players operation .value gacha_virtual_data += @s gacha_origin_damage\n")
fd.write("execute if score .value gacha_virtual_data matches %d.. run scoreboard players set .value gacha_virtual_data %d\n"%(max, max))
fd.write("scoreboard players operation .value gacha_virtual_data -= @s gacha_origin_damage\n")

if more:
    for cmd in more:
        f. write(cmd+'\n')

fd.write(r)
fd.close()
f.close()
