import shutil
import os

# Generate Tree

def generate_tree(n):
	MIN, MAX = 1, 60
	for root, dirs, files in os.walk(f'print_entry'):
		for f in files: os.unlink(os.path.join(root, f))
		for d in dirs: shutil.rmtree(os.path.join(root, d))
	os.mkdir(f'print_entry/tree')

	def rec(a,b):
		L = b-a
		if L == 0:
			return 'execute if score @s session_id matches %s run tellraw @a[tag=source,limit=1] [{"text":" ","color":"aqua"},{"text":"[→]","color":"blue","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to send a teleport request\\nto ","color":"blue"},{"selector":"@s","color":"blue","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger tpa set %s"}}," ",{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]\n' % (a, -1000-a)
		else:
			_range = f'{a}..{b}'
			with open((f'print_entry/main.mcfunction' if (a == MIN and b == MAX) else f'print_entry/tree/{_range}.mcfunction'),'w',encoding='utf-8') as file:
				if (a == MIN and b == MAX):
					file.write('execute store success score <blocked> variable if score @s disable_tpa_requests matches 1\nexecute if score @s disable_tpa_requests matches 2 if score <source_is_guest> variable matches 1 run scoreboard players set <blocked> variable 1\nexecute if score @s id = <source_id> variable run scoreboard players set <blocked> variable 1\nexecute if score <blocked> variable matches 1 run tellraw @a[tag=source,limit=1] [{"text":" ","color":"aqua"},{"text":"[→]","color":"gray","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"You cannot send a teleport\\nrequest to this player.","color":"gray"}]}}," ",{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]\nexecute if score <blocked> variable matches 1 run return 0\n\n')

				if (L < n):
					for i in range(0,L+1):
						file.write(rec( a+i, a+i ))
				else:
					file.write(rec( a, a+(L)//n ))
					for i in range(1,n):
						file.write(rec( a+ (i*L)//n +1, a+ ((i+1)*L)//n ))

			return f"execute if score @s session_id matches {_range} run function pandamium:triggers/tpa/print_menu/print_entry/tree/{_range}\n"
	rec(MIN,MAX)

generate_tree(4)

print('done')
