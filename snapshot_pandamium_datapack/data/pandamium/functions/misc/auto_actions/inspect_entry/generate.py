import math

MIN = 1
MAX = 20

def generate_tree(a=MIN,b=MAX):
    if a == b:
        return 'execute if score <entry_id> variable matches %s run data modify storage pandamium:auto_actions selected_entry set from storage pandamium:auto_actions actions[{id:%sb}]\n' % (a,a,)
    else:
        with open('tree/'+('run.mcfunction' if (a == MIN and b == MAX) else f'{a}..{b}.mcfunction'),'w') as file:
            file.write(generate_tree(a,a+math.floor((b-a)/2)))
            file.write(generate_tree(a+math.ceil((b-a)/2),b))
        return f"execute if score <entry_id> variable matches {a}..{b} run function pandamium:misc/auto_actions/inspect_entry/tree/{a}..{b}\n"

generate_tree()
print('done')
