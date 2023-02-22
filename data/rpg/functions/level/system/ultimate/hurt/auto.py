import sys, os

path = "/".join(sys.argv[0].split('\\')[:-1])
mc_path = 'rpg:level/system/ultimate/hurt/damage'

def build_quatern(start, end, scale, now, mc_now):
    mid = (start + end) // 2
    midL = (start + mid) // 2
    midR = (mid + end) // 2
    split = (
        (start, midL),
        (midL+1, mid),
        (mid+1, midR),
        (midR+1, end)
    )
    try: os.mkdir(now)
    except: pass
    next = '%d..%d'%(start,end)
    fd = open(now + '/' + next + '.mcfunction','w')

    for r in split:
        if r[0] == r[1]:
            fd.write('execute if score .value rpg_virtual_data matches %d run damage @s %f minecraft:magic by @e[tag=rpg_source,limit=1]\n'%(r[0],r[0]*scale))
        else:
            fd.write('execute if score .value rpg_virtual_data matches {0}..{1} run function {2}/{3}/{0}..{1}\n'.format(*r, mc_now, next))
            build_quatern(*r,0.1,now+'/'+next,mc_now+'/'+next)

start = 1
end = 65536
build_quatern(start, end, 0.1, path + '/damage', mc_path)
open(path+'/damage.mcfunction','w').write('function %s/%d..%d'%(mc_path,start,end))