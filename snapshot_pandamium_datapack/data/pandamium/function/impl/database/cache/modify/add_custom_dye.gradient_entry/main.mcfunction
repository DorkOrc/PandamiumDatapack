# arguments: username, color_0, color_1, color_2, color_3, color_4, color_5, color_6, color_7, color_8, color_9, color_10, color_11, color_12

# check if entry exists
$execute if data storage pandamium:cache macros."custom_dye.gradient".entries[{id:"$(username)-custom_dye.gradient"}] run function pandamium:impl/database/cache/modify/remove_custom_dye.gradient_entry/main {username:"$(username)"}

# init
$data modify storage pandamium:local functions."pandamium:impl/database/cache/modify/add_custom_dye.gradient_entry/*".entry set value \
{\
    username:"$(username)",id:"$(username)-custom_dye.gradient",\
    frames: [\
		{\
			commands: [\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.feet {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_0)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.legs {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_3)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.chest {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_6)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.head {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_9)}}}}'\
			]\
		},\
		{\
			commands: [\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.feet {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_1)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.legs {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_4)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.chest {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_7)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.head {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_10)}}}}'\
			]\
		},\
		{\
			commands: [\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.feet {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_2)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.legs {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_5)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.chest {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_8)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.head {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_11)}}}}'\
			]\
		},\
		{\
			commands: [\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.feet {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_3)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.legs {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_6)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.chest {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_9)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.head {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_12)}}}}'\
			]\
		},\
		{\
			commands: [\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.feet {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_4)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.legs {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_7)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.chest {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_10)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.head {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_11)}}}}'\
			]\
		},\
		{\
			commands: [\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.feet {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_5)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.legs {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_8)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.chest {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_11)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.head {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_10)}}}}'\
			]\
		},\
		{\
			commands: [\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.feet {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_6)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.legs {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_9)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.chest {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_12)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.head {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_9)}}}}'\
			]\
		},\
		{\
			commands: [\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.feet {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_7)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.legs {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_10)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.chest {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_11)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.head {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_8)}}}}'\
			]\
		},\
		{\
			commands: [\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.feet {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_8)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.legs {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_11)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.chest {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_10)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.head {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_7)}}}}'\
			]\
		},\
		{\
			commands: [\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.feet {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_9)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.legs {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_12)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.chest {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_9)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.head {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_6)}}}}'\
			]\
		},\
		{\
			commands: [\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.feet {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_10)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.legs {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_11)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.chest {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_8)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.head {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_5)}}}}'\
			]\
		},\
		{\
			commands: [\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.feet {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_11)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.legs {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_10)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.chest {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_7)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.head {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_4)}}}}'\
			]\
		},\
		{\
			commands: [\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.feet {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_12)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.legs {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_9)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.chest {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_6)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.head {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_3)}}}}'\
			]\
		},\
		{\
			commands: [\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.feet {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_11)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.legs {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_8)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.chest {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_5)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.head {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_2)}}}}'\
			]\
		},\
		{\
			commands: [\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.feet {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_10)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.legs {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_7)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.chest {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_4)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.head {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_1)}}}}'\
			]\
		},\
		{\
			commands: [\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.feet {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_9)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.legs {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_6)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.chest {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_3)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.head {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_0)}}}}'\
			]\
		},\
		{\
			commands: [\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.feet {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_8)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.legs {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_5)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.chest {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_2)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.head {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_1)}}}}'\
			]\
		},\
		{\
			commands: [\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.feet {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_7)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.legs {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_4)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.chest {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_1)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.head {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_2)}}}}'\
			]\
		},\
		{\
			commands: [\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.feet {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_6)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.legs {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_3)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.chest {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_0)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.head {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_3)}}}}'\
			]\
		},\
		{\
			commands: [\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.feet {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_5)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.legs {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_2)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.chest {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_1)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.head {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_4)}}}}'\
			]\
		},\
		{\
			commands: [\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.feet {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_4)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.legs {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_1)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.chest {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_2)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.head {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_5)}}}}'\
			]\
		},\
		{\
			commands: [\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.feet {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_3)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.legs {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_0)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.chest {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_3)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.head {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_6)}}}}'\
			]\
		},\
		{\
			commands: [\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.feet {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_2)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.legs {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_1)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.chest {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_4)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.head {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_7)}}}}'\
			]\
		},\
		{\
			commands: [\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.feet {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_1)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.legs {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_2)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.chest {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_5)}}}}',\
				'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.head {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_8)}}}}'\
			]\
		}\
    ]\
}

# append
data modify storage pandamium:cache macros."custom_dye.gradient".entries append from storage pandamium:local functions."pandamium:impl/database/cache/modify/add_custom_dye.gradient_entry/*".entry
execute store result score <index> variable if data storage pandamium:cache macros."custom_dye.gradient".entries[]
execute store result storage pandamium:cache macros."custom_dye.gradient".entries[-1].index int 1 run scoreboard players remove <index> variable 1

function pandamium:impl/database/cache/modify/add_custom_dye.gradient_entry/set_lines with storage pandamium:cache macros."custom_dye.gradient".entries[-1]

# update macros."custom_dye.gradient".upper_bound
execute store result score <total_entries> variable store result score <offset> variable if data storage pandamium:cache macros."custom_dye.gradient".entries[]
scoreboard players operation <offset> variable %= #-10 constant
execute store result storage pandamium:cache macros."custom_dye.gradient".upper_bound int 1 run scoreboard players operation <total_entries> variable -= <offset> variable
