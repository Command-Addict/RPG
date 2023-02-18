import sys, uuid

path = "/".join(sys.argv[0].split('\\')[:-1])

def run(name, attribute, max, i, type, more):
    form = """execute if score .value rpg_virtual_data matches %d.. run attribute @s %s modifier add %s "gacha level %s-%f" %f %s
execute if score .value rpg_virtual_data matches %d.. run scoreboard players remove .value rpg_virtual_data %d
"""

    scale = 1/i
    max *= scale
    i *= scale

    fd = open(path+'/attribute/'+name+'.mcfunction','w')
    fd.write('tag @s add has_starforce__%s\n'%name)
    r = ""

    s = 0
    while s < max:
        UUID = str(uuid.uuid4())
        r = form%(i, attribute, UUID, name, i/scale, i/scale, type, i, i) + r
        s += i
        i += i

    fd.write("execute if score .value rpg_virtual_data matches %d.. run scoreboard players set .value rpg_virtual_data %d\n"%(max, max))

    if more:
        for cmd in more:
            f. write(cmd+'\n')

    fd.write(r)
    fd.close()

li = (
    ("hp", "minecraft:generic.max_health", 6, 0.024, "multiply_base", None),
    ("damage", "minecraft:generic.attack_damage", 6, 0.024, "multiply_base", None),
)

f = open(path+'/attribute.mcfunction','w')
for row in li:
    run(*row)
    f.write('scoreboard players operation .value rpg_virtual_data = @s rpg_entity_level\n')
    f.write('function rpg:level/system/loop/attribute/{0}\n'.format(*row))

f.close()