import shutil
import os

trails = [
	[
		'Trails (A-O)',
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
			(48, 'Ominous Spawning'), 
			(47, 'Ominous Trial Embers'), 
		]
	],
	[
		'Trails (P-Z)',
		2,
		[
			(46, 'Pale Oak Leaves'),
			(16, 'Popping Bubbles'), 
			(21, 'Rainbow'), 
			(15, 'Redstone Dust'), 
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
		'Death Particles',
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
	return '{"text":"[%s]","color":"dark_aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to pick death particle ","color":"dark_aqua"},{"text":"%s","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger particles set -%s"},"insertion":"%s"}' % (particle[1],particle[1],particle[0],particle[0]-1000)

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
	file.write('execute store result score <trail_id> variable run scoreboard players get @s active_particles\nexecute store result score <death_event_id> variable run scoreboard players get @s death_particles\nfunction pandamium:triggers/particles/print_menu/get_trail_name/main\nfunction pandamium:triggers/particles/print_menu/get_death_event_name/main\ntellraw @s [{"text":"======== ","color":"aqua"},{"text":"Particles","bold":true}," ========\\n",{"text":"Trail: ","bold":true,"color":"dark_green"},{"nbt":"trail","storage":"pandamium:temp","interpret":true},"\\n",{"text":"On Death/Hurt: ","bold":true,"color":"dark_red"},{"nbt":"death_event","storage":"pandamium:temp","interpret":true}]\n\n')

write_sections(trails)
write_sections(death_events,True)

pages = {}
for section in sum([trails,death_events],[]):
	if section[1] not in pages: pages[section[1]] = []
	pages[section[1]].append(section[0]) 

with open(f'main.mcfunction','a',encoding='utf-8') as file:
	file.write(
		"\n"
		+ r"""tellraw @s ["",{"text":"[Disable Trail Particles]","color":"red","clickEvent":{"action":"run_command","value":"/trigger particles set -999"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"red"},{"text":"disable","bold":true}," your trail particles"]}},"  ",{"text":"[Disable Death Particles]","color":"red","clickEvent":{"action":"run_command","value":"/trigger particles set -1999"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"red"},{"text":"disable","bold":true}," your death particles"]}}]"""
		+ "\n"
		+ r"""tellraw @s [{"text":"","color":"gold"},{"text":"Pages:","bold":true,"color":"yellow"}"""
	)
	for key in pages:
		file.write(
			r"""," ",{"text":"[%s]","hoverEvent":{"action":"show_text","contents":[{"text":"Click to go to ","color":"gold"},{"text":"Page %s","bold":true},[{"text":"","color":"dark_gray"}"""
			% (
				key,
				key,
			)
		)
		for name in pages[key]:
			file.write(
				r""",{"text":"\n• %s"}"""
				% (
					name,
				)
			)
		file.write(
			r"""]]},"clickEvent":{"action":"run_command","value":"/trigger particles set %s"}}"""
			% (
				key,
			)
		)
	
	file.write(
		"]\n\n"
		+ r"""execute if score @s particles matches 1..2 unless score @s optn.trail_particles_when_stationary matches 1 run tellraw @s [{"text":"Trail While Stationary: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Trail While Stationary","bold":true},{"text":"\nIf On, particles under the\n\"Trails\" category will appear\neven when you are not moving.","color":"gray"},[{"text":"","color":"dark_gray"},{"text":"\n• On (Default)","color":"white"},"\n• Off"]]},"clickEvent":{"action":"run_command","value":"/trigger options set -701"}},{"text":"Off","color":"yellow","bold":true}]"""
		+ "\n"
		+ r"""execute if score @s particles matches 1..2 if score @s optn.trail_particles_when_stationary matches 1 run tellraw @s [{"text":"Trail While Stationary: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Trail While Stationary","bold":true},{"text":"\nIf On, particles under the\n\"Trails\" category will appear\neven when you are not moving.","color":"gray"},[{"text":"\n• On (Default)","color":"dark_gray"},{"text":"\n• Off","color":"white"}]]},"clickEvent":{"action":"run_command","value":"/trigger options set -701"}},{"text":"On","color":"yellow","bold":true}]"""
		+ "\n\n"
		+ r"""tellraw @s {"text":"===========================","color":"aqua"}"""
		+ "\n"
	)

#================================================================================================================================
# Generate Map

all_death_events = sorted(sum([section[2] for section in death_events], []), key = lambda _: _[0])

with open("setup_dictionary.mcfunction","w") as file:
	file.write(
		"""data modify storage pandamium:dictionary triggers.particles.death_events_map set value {%s}\n""" % (
			",".join([f"{id-1000}:'\"" + name.replace("\"", "\\\"").replace("\\", "\\\\").replace("'", "\\'") + "\"'" for id, name in all_death_events]),
		)
	)

print('done')
