def int_to_hex(num):
    return "%0.2X" % int(num)

def rgb_to_hex(rgb):
    return (
        int_to_hex(rgb[0])
        +int_to_hex(rgb[1])
        +int_to_hex(rgb[2])
        )

nodes = [(255,0,0),(255,127,0),(255,255,0),(127,255,0),(0,255,0),(0,255,127),(0,255,255),(0,127,255),(0,0,255),(127,0,255),(255,0,255),(255,0,127)]
inbetweens = 8
colors = []

for i in range(len(nodes)):
    a = nodes[i%len(nodes)]
    b = nodes[(i+1)%len(nodes)]
    colors += [
        (
            (
                (1-j/inbetweens)*a[0]+(j/inbetweens)*b[0],
                (1-j/inbetweens)*a[1]+(j/inbetweens)*b[1],
                (1-j/inbetweens)*a[2]+(j/inbetweens)*b[2]
            )
        )
        for j in range(inbetweens)
        ]

def generate_tree(section,a=None,b=None):
    L = len(section)
    if a == None: a = 0
    if b == None: b = len(section)-1

    if a == b:
        #with open(f'tree/{a}.mcfunction','w') as file:
        #    file.write('execute if score <brightness_index> variable matches 0 run data modify block 3 0 0 front_text.messages[0] set value \'[{"nbt":"front_text.messages[0]","block":"3 0 0","interpret":true},{"nbt":"characters[0]","storage":"pandamium:temp","color":"#%s"}]\'\n' % rgb_to_hex(section[0]))
        #    file.write('execute if score <brightness_index> variable matches 1 run data modify block 3 0 0 front_text.messages[0] set value \'[{"nbt":"front_text.messages[0]","block":"3 0 0","interpret":true},{"nbt":"characters[0]","storage":"pandamium:temp","color":"#%s"}]\'\n' % rgb_to_hex((section[0][0]//2,section[0][1]//2,section[0][2]//2)))
        #return f"execute if score <color_index> variable matches {a} run function pandamium:misc/font/custom_fonts/gradient/tree/{a}\n"
        return 'execute if score <color_index> variable matches %s run data modify block 3 0 0 front_text.messages[0] set value \'[{"nbt":"front_text.messages[0]","block":"3 0 0","interpret":true},{"nbt":"characters[0]","storage":"pandamium:temp","color":"#%s"}]\'\n' % (a,rgb_to_hex(section[0]))
    else:
        with open('tree/'+('run.mcfunction' if (a == 0 and b == len(colors)-1) else f'{a}..{b}.mcfunction'),'w') as file:
            file.write(generate_tree(section[:L//2],a,a+L//2-1))
            file.write(generate_tree(section[L//2:],a+L//2,b))
        return f"execute if score <color_index> variable matches {a}..{b} run function pandamium:misc/font/custom_fonts/gradient/tree/{a}..{b}\n"

generate_tree(colors)

with open(f'indexes.txt','w') as file:
    for i in range(len(colors)):
        file.write(f'{i} - #{rgb_to_hex(colors[i])}\n')

print('done')
