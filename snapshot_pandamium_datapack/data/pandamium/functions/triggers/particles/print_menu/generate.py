import shutil
import os

trails = [
	[
		'Trails (A-R)',
		1,
		[
			(9, 'Angry Clouds'), 
			(17, 'Ash'), 
			(33, 'Blossom Spores'), 
			(24, 'Campfire Smoke'), 
			(42, 'Cherry Leaves'), 
			(25, 'Conduit Eyes'), 
			(38, 'Copper Scrape'), 
			(11, 'Crit Hits'), 
			(19, 'Crying Obsidian'), 
			(2, 'Dragon Breath'), 
			(43, 'Dust Plumes'), 
			(37, 'Electric Sparks'), 
			(20, 'Enchant Glyphs'), 
			(3, 'End Rod'), 
			(12, 'Firework Sparks'), 
			(4, 'Flames'), 
			(1, 'Glint'), 
			(31, 'Glow'), 
			(32, 'Glow Ink'), 
			(8, 'Hearts'), 
			(29, 'Lava Drips'), 
			(36, 'Light Bulb'), 
			(5, 'Music Notes'), 
			(26, 'Nectar'), 
			(99, 'Nether Portal'), 
			(16, 'Popping Bubbles'), 
			(21, 'Rainbow'), 
			(15, 'Redstone Dust'), 
		]
	],
	[
		'Trails (S-W)',
		2,
		[
			(40, 'Sculk Bubbles'), 
			(41, 'Sculk Charge'), 
			(30, 'Sculk Sensor'), 
			(39, 'Sculk Souls'), 
			(22, 'Smoke'), 
			(23, 'Snowflakes'), 
			(6, 'Soul Fire'), 
			(7, 'Souls'), 
			(28, 'Squid Ink'), 
			(14, 'Totem of Undying'), 
			(44, 'Trial Embers'), 
			(45, 'Vault Connection'), 
			(13, 'Void Fog'), 
			(27, 'Warped Spores'), 
			(35, 'Wax Off'), 
			(34, 'Wax On'), 
			(18, 'White Ash'), 
			(10, 'Witch'),
		]
	],
	[
		'Emotes',
		2,
		[
			(67,'Tears'),
			(68,'Blush'),
			(77,'Exclamation'),
			(78,'Question'),
			(79,'Storm'),
			(80,'Lava Storm'),
		]
	],
	[
		'Hats',
		3,
		[
			(83,'Crown'),
			(76,'Arrow'),
			(64,'Halo'),
			(65,'Horns'),
			(84,'Phoenix Ears'),
			(69,'Axolotl Gills'),
			(70,'Warden Ears'),
			(72,'Goat Ears and Horns'),
			(85,'Sniffer Ears'),
			(86,'Camel Ears'),
			(98,'Plumb Bob'),
		]
	],
	[
		'Wings',
		3,
		[
			(73,'Angel'),
			(74,'Devil'),
			(75,'Phoenix'),
			(82,'Allay Wings'),
			(87,'Vex Wings'),
			(88,'Dragon Wings'),
			(89,'Phantom Wings'),
		]
	],
	[	
		'Animal Banners',
		4,
		[
			(71,'Glow Squid'),
			(81,'Frog'),
		]
	],
	[
		'People',
		4,
		[
			(66,'Olexorus'),
			(52,'Technoblade'),
			(90,'Sundroid'),
		]
	],
	[
		"Rank Banners",
		4,
		[
			(91,'Supporter Star'),
			(92,'Helper Shield'),
			(93,'Moderator Shield'),
			(94,'Sr. Mod Shield'),
			(95,'Admin Shield'),
			(96,'Owner Shield'),
			(97,'VIP Gem'),
		]
	],
	[
		'Jokes',
		4,
		[
			(50,'Hamster Wheel'),
			(51,'Pepé'),
			(53,'Shrek'),
		]
	]
]

death_events = [
	[
		'Death Events',
		5,
		[
			(1001,'Explosion'),
			(1002,'Firework Rocket'),
			(1003,'Iron'),
			(1004,'Gold'),
			(1005,'Diamond'),
			(1006,'Gore'),
			(1007,'Slime'),
			(1008,'Amethyst'),
			(1009,'Ender Eye'),
			(1010,'Fire'),
			(1011,'Souls'),
			(1012,'Moss'),
			(1013,'Snow'),
			(1014,'Smoke'),
			(1015,'Witch'),
			(1016,'Storm'),
			(1017,'Shriek'),
			(1018,'Sonic Boom'),
			(1019,'Gust'),
		]
	]
]

def get_character_width(char):
	if char in "\n":
		return 0
	if char in "|i:.!'":
		return 1
	if char in "l":
		return 2
	if char in "[](){}t*I":
		return 3
	if char == " fk\"":
		return 4
	return 5

def get_string_width(string):
	length = 0
	for char in string:
		length += get_character_width(char)
		length += 1
	return length

# Generate Menu

def get_button_json(particle,is_death_event:bool=False):
	if not is_death_event:
		return '{"text":"[%s]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to pick trail ","color":"aqua"},{"text":"%s","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger particles set -%s"},"insertion":"%s"}' % (particle[1],particle[1],particle[0],particle[0])
	return '{"text":"[%s]","color":"dark_aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to pick death event ","color":"dark_aqua"},{"text":"%s","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger particles set -%s"},"insertion":"%s"}' % (particle[1],particle[1],particle[0],particle[0]-1000)

def write_sections(sections,is_death_event:bool=False):
	with open(f'main.mcfunction','a',encoding='utf-8') as file:
		for section in sections:
			file.write('tellraw @s[scores={particles=%s}] [{"text":"","color":"green"},{"text":"%s:","bold":true,"color":"aqua"}' % (section[1],section[0],))
			section[2].sort(key=lambda x: x[1])
			lines = [
				{
					"literal": f' [{section[1]}]',
					"json": ',"\\n ",%s' % (get_button_json(section[2][0],is_death_event),)
				}
			]
			for particle in section[2][1:]:
				potential = lines[-1]["literal"] + '  |  [%s]' % (particle[1],)
				if get_string_width(potential) <= 240:
					lines[-1]["literal"] = potential
					lines[-1]["json"] += ',"  |  ",%s' % (get_button_json(particle,is_death_event),)
				else:
					lines.append(
						{
							"literal":f' [{particle[1]}]',
							"json":',"\\n ",%s' % (get_button_json(particle,is_death_event),)
						}
					)
			for i in range(len(lines)):
				file.write(lines[i]["json"])
			file.write("]\n")

with open(f'main.mcfunction','w',encoding='utf-8') as file:
	file.write('execute store result score <trail_id> variable run scoreboard players get @s active_particles\nexecute store result score <death_event_id> variable run scoreboard players get @s death_particles\nfunction pandamium:triggers/particles/print_menu/get_trail_name/main\nfunction pandamium:triggers/particles/print_menu/get_death_event_name/main\ntellraw @s [{"text":"======== ","color":"aqua"},{"text":"Particles","bold":true}," ========\\n",{"text":"Trail: ","bold":true,"color":"dark_green"},{"nbt":"trail","storage":"pandamium:temp","interpret":true},"\\n",{"text":"Death Event: ","bold":true,"color":"dark_red"},{"nbt":"death_event","storage":"pandamium:temp","interpret":true}]\n\n')

write_sections(trails)
write_sections(death_events,True)

pages = {}
for section in sum([trails,death_events],[]):
	if section[1] not in pages: pages[section[1]] = []
	pages[section[1]].append(section[0]) 

with open(f'main.mcfunction','a',encoding='utf-8') as file:
	file.write('\ntellraw @s ["",{"text":"[Disable Trail]","color":"red","clickEvent":{"action":"run_command","value":"/trigger particles set -999"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"red"},{"text":"disable","bold":true}," your trail"]}},"  ",{"text":"[Disable Death Event]","color":"red","clickEvent":{"action":"run_command","value":"/trigger particles set -1999"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"red"},{"text":"disable","bold":true}," your death event"]}}]')
	file.write('\ntellraw @s [{"text":"","color":"gold"},{"text":"Pages:","bold":true,"color":"yellow"}')
	for key in pages:
		file.write('," ",{"text":"[%s]","hoverEvent":{"action":"show_text","contents":[{"text":"Click to go to ","color":"gold"},{"text":"Page %s","bold":true},[{"text":"","color":"dark_gray"}' % (key,key,))
		for name in pages[key]:
			file.write(',{"text":"\\n• %s"}' % (name,))
		file.write(']]},"clickEvent":{"action":"run_command","value":"/trigger particles set %s"}}' % (key,))
	file.write(']\n\ntellraw @s {"text":"===========================","color":"aqua"}\nreturn 0\n')

		


#================================================================================================================================
# Generate Tree
def quick_sort_particles(particles_list):
	if len(particles_list) <= 1: return particles_list

	pivot = particles_list.pop((len(particles_list)-1)//2)
	left = []
	right = []

	for particle in particles_list:
		if particle[0] < pivot[0]:
			left.append(particle)
		else:
			right.append(particle)
	
	return quick_sort_particles(left) + [pivot] + quick_sort_particles(right)

all_trails = sum([section[2] for section in trails],[])
all_death_events = sum([section[2] for section in death_events],[])

def generate_tree(particles,name,offset=0):
	particles = quick_sort_particles(particles)
	MIN, MAX = 0, len(particles)-1
	for root, dirs, files in os.walk(f'get_{name}_name'):
		for f in files: os.unlink(os.path.join(root, f))
		for d in dirs: shutil.rmtree(os.path.join(root, d))
	os.mkdir(f'get_{name}_name/tree')

	def rec(a,b):
		L = b-a
		if a == b:
			return 'execute if score <%s_id> variable matches %s run data modify storage pandamium:temp %s set value \'"%s"\'\n' % (name, particles[a][0]+offset, name, particles[a][1].replace('"','\\"').replace('\\','\\\\'))
		else:
			_range = f'{particles[a][0]+offset}..{particles[b][0]+offset}'
			with open((f'get_{name}_name/main.mcfunction' if (a == MIN and b == MAX) else f'get_{name}_name/tree/{_range}.mcfunction'),'w',encoding='utf-8') as file:
				if (a == MIN and b == MAX):
					file.write('execute if score <'+str(name)+'_id> variable matches ..0 run return run data modify storage pandamium:temp %s set value \'{"text":"Not Set","color":"gray"}\'\n'%(name,))
					file.write('data modify storage pandamium:temp %s set value \'{"text":"missing_name","color":"gray"}\'\n'%(name,))
				file.write(rec(a,a+(L//2)))
				file.write(rec(a+(L//2)+1,b))
			return f"execute if score <{name}_id> variable matches {_range} run function pandamium:triggers/particles/print_menu/get_{name}_name/tree/{_range}\n"
	rec(MIN,MAX)

generate_tree(all_trails,"trail")
generate_tree(all_death_events,"death_event",offset=-1000)

print('done')
