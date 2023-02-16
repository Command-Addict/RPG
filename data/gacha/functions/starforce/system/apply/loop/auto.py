import sys, uuid

path = "/".join(sys.argv[0].split('\\')[:-1])
util_path = "/".join(sys.argv[0].split('\\')[:-5])

def run(name, attribute, max, i, more):
    form = """execute if score .value gacha_virtual_data matches %d.. run attribute @s %s modifier add %s "gacha starforce %s-%f" %f multiply_base
execute if score .value gacha_virtual_data matches %d.. run scoreboard players remove .value gacha_virtual_data %d
"""

    scale = 1/i
    max *= scale
    i *= scale

    fd = open(path+'/'+name+'.mcfunction','w')
    fd.write('tag @s add has_starforce__%s\n'%name)
    f = open(util_path+'/utils/private/reset_starforce/'+name+'.mcfunction','w')
    f.write('tag @s remove has_starforce__%s\n'%name)
    r = ""

    s = 0
    while s < max:
        UUID = str(uuid.uuid4())
        r = form%(i, attribute, UUID, name, i/scale, i/scale, i, i) + r
        f.write("attribute @s %s modifier remove %s\n"%(attribute, UUID))
        s += i
        i += i

    fd.write("execute if score .value gacha_virtual_data matches %d.. run scoreboard players set .value gacha_virtual_data %d\n"%(max, max))

    if more:
        for cmd in more:
            f. write(cmd+'\n')

    fd.write(r)
    fd.close()
    f.close()

li = (
    ("armor", "minecraft:generic.max_health", 8, 0.005, None),
    ("mainhand", "minecraft:generic.attack_damage", 1, 0.005, None),
)

f = open(util_path+'/utils/reset_starforce.mcfunction','w')
for row in li:
    run(*row)
    f.write('execute if entity @s[tag=has_starforce__{0}] run function gacha:utils/private/reset_starforce/{0}\n'.format(*row))

f.write('tag @s remove has_starforce')