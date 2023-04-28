import math

MIN = 1
MAX = 20

def generate_tree(a=MIN,b=MAX):
    if a == b:
        return 'execute if score <entry_id> variable matches %s run data modify storage pandamium:auto_actions selected_entry set from storage pandamium:auto_actions actions[{id:%sb}]\n' % (a,a,)
    else:
        with open(('main.mcfunction' if (a == MIN and b == MAX) else f'tree/{a}..{b}.mcfunction'),'w') as file:
            file.write(generate_tree(a,a+((b-a)//2)))
            file.write(generate_tree(a+((b-a)//2)+1,b))
        return f"execute if score <entry_id> variable matches {a}..{b} run function pandamium:impl/triggers/auto_actions_log/inspect_entry/get_entry/tree/{a}..{b}\n"

generate_tree()
print('done')
