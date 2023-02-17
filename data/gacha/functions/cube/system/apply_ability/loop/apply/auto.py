import sys, uuid

path = "/".join(sys.argv[0].split('\\')[:-1])
util_path = "/".join(sys.argv[0].split('\\')[:-6])

def run(name, attribute, max, i, type, more):
    form = """execute if score .value gacha_virtual_data matches %d.. run attribute @s %s modifier add %s "gacha ability %s-%f" %f %s
execute if score .value gacha_virtual_data matches %d.. run scoreboard players remove .value gacha_virtual_data %d
"""

    scale = 1/i
    max *= scale
    i *= scale

    fd = open(path+'/attribute/add/'+name+'.mcfunction','w')
    fd.write('tag @s add has_ability__%s\n'%name)
    f = open(util_path+'/utils/private/reset_abilities/'+name+'.mcfunction','w')
    f.write('tag @s remove has_ability__%s\n'%name)
    r = ""

    s = 0
    while s < max:
        UUID = str(uuid.uuid4())
        r = form%(i, attribute, UUID, name, i/scale, i/scale, type, i, i) + r
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
    ("power", "minecraft:generic.attack_damage", 1.8, 0.001, "multiply_base", None),
    ("speed", "minecraft:generic.movement_speed", 0.25, 0.00013, "add", None),
    ("hp", "minecraft:generic.max_health", 1.8, 0.001, "multiply_base", None),
    #("crit", "minecraft:generic.attack_damage", 1024, 0.1, "add", None)
    ("knockback_resistance", "minecraft:generic.knockback_resistance", 0.6, 0.001, "add", None),
)

f = open(util_path+'/utils/reset_abilities.mcfunction','w')
for row in li:
    run(*row)
    f.write('execute if entity @s[tag=has_ability__{0}] run function gacha:utils/private/reset_abilities/{0}\n'.format(*row))

f.write('execute if entity @s[tag=has_ability__critical] run function gacha:utils/private/reset_abilities/critical\n')

f.write('tag @s remove has_ability')