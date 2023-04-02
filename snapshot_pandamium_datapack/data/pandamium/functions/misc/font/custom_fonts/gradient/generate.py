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
hex_codes = []

for i in range(len(nodes)):
    a = nodes[i%len(nodes)]
    b = nodes[(i+1)%len(nodes)]
    hex_codes += [
        rgb_to_hex(
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
        return 'execute if score <color_index> variable matches %s run data modify block 3 0 0 front_text.messages[0] set value \'[{"nbt":"front_text.messages[0]","block":"3 0 0","interpret":true},{"nbt":"characters[0]","storage":"pandamium:temp","color":"#%s"}]\'\n' % (a,section[0])
    else:
        if (a == 0) and (b == len(hex_codes)-1):
            file_name = 'run.mcfunction'
        else: 
            file_name = f'{a}..{b}.mcfunction'

        with open(f'tree/{file_name}','w') as file:
            file.write(generate_tree(section[:L//2],a,a+L//2-1))
            file.write(generate_tree(section[L//2:],a+L//2,b))
            return f"execute if score <color_index> variable matches {a}..{b} run function pandamium:misc/font/custom_fonts/gradient/tree/{a}..{b}\n"

generate_tree(hex_codes)

with open(f'indexes.txt','w') as file:
    for i in range(len(hex_codes)):
        file.write(f'{i} - #{hex_codes[i]}\n')
