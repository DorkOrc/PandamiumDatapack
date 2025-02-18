trails = [
	[
		'Trails (A-N)',
		1,
		[
			(9, 'Angry Clouds'), 
			(17, 'Ash'), 
			(54, 'Autumn Leaves'),
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
			(55, 'Fireflies'), 
			(12, 'Firework Sparks'), 
			(4, 'Flames'), 
			(1, 'Glint'), 
			(31, 'Glow'), 
			(32, 'Glow Ink'), 
			(49, 'Green Leaves'),
			(8, 'Hearts'), 
			(29, 'Lava Drips'), 
			(36, 'Light Bulb'), 
			(5, 'Music Notes'), 
			(26, 'Nectar'), 
			(99, 'Nether Portal'), 
		]
	],
	[
		'Trails (O-Z)',
		2,
		[
			(48, 'Ominous Spawning'), 
			(47, 'Ominous Trial Embers'), 
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
		'Festive Hats',
		3,
		[
			(100,'Santa Hat'),
			(101,'Decorated Tree'),
			(102,'Reindeer Antlers'),
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
		'People Banners',
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

damage_effects = [
	[
		'Death/Hurt Effects',
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
	width = 0
	for char in string:
		width += get_character_width(char)
		width += 1
	return width

# Generate Menu

def get_button_text_component(particle,is_damage_effect:bool=False):
	if not is_damage_effect:
		return '{color:"aqua",text:"[%s]",hover_event:{action:"show_text",value:[{color:"aqua",text:"Click to pick trail "},{bold:true,text:"%s"}]},click_event:{action:"run_command",command:"trigger particles set -%s"},insertion:"%s"}' % (particle[1],particle[1],particle[0],particle[0])
	return '{color:"dark_aqua",text:"[%s]",hover_event:{action:"show_text",value:[{color:"dark_aqua",text:"Click to pick death/hurt effect "},{bold:true,text:"%s"}]},click_event:{action:"run_command",command:"trigger particles set -%s"},insertion:"%s"}' % (particle[1],particle[1],particle[0],particle[0]-1000)

def write_sections(sections,is_damage_effect:bool=False):
	with open(f'main.mcfunction','a',encoding='utf-8') as file:
		for section in sections:
			file.write('tellraw @s[scores={particles=%s}] [{color:"green",text:""},{bold:true,color:"aqua",text:"%s:"}' % (section[1],section[0],))
			section[2].sort(key=lambda x: x[1])
			lines = [
				{
					"literal": f' [{section[2][0][1]}]',
					"text_component": ',"\\n ",%s' % (get_button_text_component(section[2][0],is_damage_effect),)
				}
			]
			for particle in section[2][1:]:
				potential = lines[-1]["literal"] + '  |  [%s]' % (particle[1],)
				if (string_width := get_string_width(potential)) <= 300:
					lines[-1]["literal"] = potential
					lines[-1]["text_component"] += ',"  |  ",%s' % (get_button_text_component(particle,is_damage_effect),)
				else:
					lines.append(
						{
							"literal":f' [{particle[1]}]',
							"text_component":',"\\n ",%s' % (get_button_text_component(particle,is_damage_effect),)
						}
					)
			for i in range(len(lines)):
				file.write(lines[i]["text_component"])
			file.write("]\n")

with open(f'main.mcfunction','w',encoding='utf-8') as file:
	file.write('execute store result score <trail_type> variable run scoreboard players get @s particles_data.trail.type\nexecute store result score <damage_effect_type> variable run scoreboard players get @s particles_data.damage_effect.type\nfunction pandamium:triggers/particles/print_menu/get_trail_name/main\nfunction pandamium:triggers/particles/print_menu/get_damage_effect_name/main\ntellraw @s [{color:"aqua",text:"======== "},{bold:true,text:"Particles"}," ========\\n",{bold:true,color:"dark_green",text:"Trail: "},{storage:"pandamium:temp",nbt:"trail_name",interpret:true}," ",{color:"red",text:"[❌]",click_event:{action:"run_command",command:"trigger particles set -999"},hover_event:{action:"show_text",value:[{color:"red",text:"Click to "},{bold:true,text:"disable"}," your trail particles"]}},"\\n",{bold:true,color:"dark_red",text:"Death/Hurt: "},{storage:"pandamium:temp",nbt:"damage_effect_name",interpret:true}," ",{color:"red",text:"[❌]",click_event:{action:"run_command",command:"trigger particles set -1999"},hover_event:{action:"show_text",value:[{color:"red",text:"Click to "},{bold:true,text:"disable"}," your death/hurt effect"]}}]\n\n')

write_sections(trails)
write_sections(damage_effects,True)

pages = {}
for section in sum([trails,damage_effects],[]):
	if section[1] not in pages: pages[section[1]] = []
	pages[section[1]].append(section[0]) 

with open(f'main.mcfunction','a',encoding='utf-8') as file:
	file.write(
		r"""tellraw @s [""]"""
		+ "\n"
		r"""execute if score @s particles matches 1..2 unless score @s optn.trail_particles_when_stationary matches 1 run tellraw @s [{color:"aqua",text:"🔧 Trail While Stationary: ",hover_event:{action:"show_text",value:[{color:"aqua",text:"Click to cycle options for\n"},{bold:true,text:"Trail While Stationary"},{color:"gray",text:'\nIf On, particles under the\n"Trails" category will appear\neven when you are not moving.'},{color:"dark_gray",text:"\n• On (Default)",extra:[{color:"white",text:"\n• Off"}]}]},click_event:{action:"run_command",command:"trigger options set -701"}},{color:"yellow",bold:true,text:"Off"}]"""
		+ "\n"
		+ r"""execute if score @s particles matches 1..2 if score @s optn.trail_particles_when_stationary matches 1 run tellraw @s [{color:"aqua",text:"🔧 Trail While Stationary: ",hover_event:{action:"show_text",value:[{color:"aqua",text:"Click to cycle options for\n"},{bold:true,text:"Trail While Stationary"},{color:"gray",text:'\nIf On, particles under the\n"Trails" category will appear\neven when you are not moving.'},{color:"dark_gray",text:"",extra:[{color:"white",text:"\n• On (Default)"},"\n• Off"]}]},click_event:{action:"run_command",command:"trigger options set -701"}},{color:"yellow",bold:true,text:"On"}]"""
		"\n"
		+ r"""tellraw @s [{color:"gold",text:""},{bold:true,color:"yellow",text:"Pages:"}"""
	)
	for key in pages:
		file.write(
			r"""," ",{text:"[%s]",hover_event:{action:"show_text",value:[{color:"gold",text:"Click to go to "},{bold:true,text:"Page %s"},{color:"dark_gray",text:"",extra:["""
			% (
				key,
				key,
			)
		)
		file.write(
			'"%s"' % "".join([r'\n• %s' % name.replace("\\","\\\\").replace('"','\\"') for name in pages[key]])
		)
		file.write(
			r"""]}]},click_event:{action:"run_command",command:"trigger particles set %s"}}"""
			% (
				key,
			)
		)
	
	#file.write(
	#	r""","  ",{"text":"[","color":"#00FF00","shadow_color":[1,0,0,1],"extra":[{"text":"Festive Hats","bold":true},"]"],"hoverEvent":{"action":"show_text","contents":[{"text":"Click to go to ","color":"#00FF00"},{"text":"Page 3","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger particles set 3"}}"""
	#)
	file.write(
		"]\n"
		+ r"""tellraw @s {color:"aqua",text:"==========================="}"""
		+ "\n"
	)

#================================================================================================================================
# Generate Map

all_damage_effects = sorted(sum([section[2] for section in damage_effects], []), key = lambda _: _[0])

with open("setup_dictionary.mcfunction","w") as file:
	file.write(
		"""data modify storage pandamium:dictionary particle_damage_effect_types set value {%s}\n""" % (
			",".join(
				[
					f"{id-1000}:%s" 
					% (
						"'%s'" % name.replace("\\", "\\\\").replace("'", "\\'") 
						if '"' in name
						else '"%s"' % name.replace("\\", "\\\\").replace('"', '\\"') 
					)
					for id, name in all_damage_effects
				]
			),
		)
	)

print('Done')
