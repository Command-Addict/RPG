import sys

path = "/".join(sys.argv[0].split('\\')[:-1])

fd = open(path+'/run.mcfunction','w')

form = """
execute if score .value rpg_virtual_data matches {0}.. run damage @s {1} rpg:utils/damage by @e[tag=rpg_source,limit=1]
execute if score .value rpg_virtual_data matches {0}.. run scoreboard players remove .value rpg_virtual_data {0}
"""

max = 2048
scale = 0.1
i = 1
sum = 0
res = ''

while sum < max:
    res = form.format(i, i * scale) + res
    sum += i * scale
    i *= 2

fd.write(res)
fd.close()