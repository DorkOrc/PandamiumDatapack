# arguments: type
# inputs:
# - score <total_lines_shown> variable
# outputs:
# - storage pandamium:text input

execute unless score <total_lines_shown> variable matches 1.. run scoreboard players set <total_lines_shown> variable 1
execute if score <total_lines_shown> variable matches 26.. run scoreboard players set <total_lines_shown> variable 25

$data modify storage pandamium:local functions."pandamium:impl/leader_boards/get_active_display/*" set from storage pandamium.leader_boards:data leader_boards.$(type).active

execute store result score <users_in_active_entries> variable if data storage pandamium:local functions."pandamium:impl/leader_boards/get_active_display/*".entries[].users[]
execute if score <users_in_active_entries> variable > <total_lines_shown> variable run function pandamium:impl/leader_boards/get_active_display/remove_excess
execute store result score <display_places> variable if data storage pandamium:local functions."pandamium:impl/leader_boards/get_active_display/*".entries[]

data modify storage pandamium:local functions."pandamium:impl/leader_boards/get_active_display/*".display set value [""]

execute if score <display_places> variable matches 1.. run data modify storage pandamium:local functions."pandamium:impl/leader_boards/get_active_display/*".display append value [\
	{\
		color: "#FFD700",\
		text: "\u2460 "\
	},\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-1].users[].username',\
		interpret: true,\
		separator: [\
			" \N{TROPHY} - ",\
			{\
				storage: "pandamium:local",\
				nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-1].display',\
				interpret: true\
			},\
			"\n\u2460 "\
		]\
	},\
	" \N{TROPHY} - ",\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-1].display',\
		interpret: true\
	}\
]

execute if score <display_places> variable matches 2.. run data modify storage pandamium:local functions."pandamium:impl/leader_boards/get_active_display/*".display append value [\
	{\
		color: "#909090",\
		text: "\u2461 "\
	},\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-2].users[].username',\
		interpret: true,\
		separator: [\
			" - ",\
			{\
				storage: "pandamium:local",\
				nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-2].display',\
				interpret: true\
			},\
			"\n\u2461 "\
		]\
	},\
	" - ",\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-2].display',\
		interpret: true\
	}\
]

execute if score <display_places> variable matches 3.. run data modify storage pandamium:local functions."pandamium:impl/leader_boards/get_active_display/*".display append value [\
	{\
		color: "#CD7F32",\
		text: "\u2462 "\
	},\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-3].users[].username',\
		interpret: true,\
		separator: [\
			" - ",\
			{\
				storage: "pandamium:local",\
				nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-3].display',\
				interpret: true\
			},\
			"\n\u2462 "\
		]\
	},\
	" - ",\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-3].display',\
		interpret: true\
	}\
]

execute if score <display_places> variable matches 4.. run data modify storage pandamium:local functions."pandamium:impl/leader_boards/get_active_display/*".display append value [\
	{\
		color: "aqua",\
		text: "\u2463 "\
	},\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-4].users[].username',\
		interpret: true,\
		separator: [\
			" - ",\
			{\
				storage: "pandamium:local",\
				nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-4].display',\
				interpret: true\
			},\
			"\n\u2463 "\
		]\
	},\
	" - ",\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-4].display',\
		interpret: true\
	}\
]

execute if score <display_places> variable matches 5.. run data modify storage pandamium:local functions."pandamium:impl/leader_boards/get_active_display/*".display append value [\
	{\
		color: "aqua",\
		text: "\u2464 "\
	},\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-5].users[].username',\
		interpret: true,\
		separator: [\
			" - ",\
			{\
				storage: "pandamium:local",\
				nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-5].display',\
				interpret: true\
			},\
			"\n\u2464 "\
		]\
	},\
	" - ",\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-5].display',\
		interpret: true\
	}\
]

execute if score <display_places> variable matches 6.. run data modify storage pandamium:local functions."pandamium:impl/leader_boards/get_active_display/*".display append value [\
	{\
		color: "aqua",\
		text: "\u2465 "\
	},\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-6].users[].username',\
		interpret: true,\
		separator: [\
			" - ",\
			{\
				storage: "pandamium:local",\
				nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-6].display',\
				interpret: true\
			},\
			"\n\u2465 "\
		]\
	},\
	" - ",\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-6].display',\
		interpret: true\
	}\
]

execute if score <display_places> variable matches 7.. run data modify storage pandamium:local functions."pandamium:impl/leader_boards/get_active_display/*".display append value [\
	{\
		color: "aqua",\
		text: "\u2466 "\
	},\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-7].users[].username',\
		interpret: true,\
		separator: [\
			" - ",\
			{\
				storage: "pandamium:local",\
				nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-7].display',\
				interpret: true\
			},\
			"\n\u2466 "\
		]\
	},\
	" - ",\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-7].display',\
		interpret: true\
	}\
]

execute if score <display_places> variable matches 8.. run data modify storage pandamium:local functions."pandamium:impl/leader_boards/get_active_display/*".display append value [\
	{\
		color: "aqua",\
		text: "\u2467 "\
	},\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-8].users[].username',\
		interpret: true,\
		separator: [\
			" - ",\
			{\
				storage: "pandamium:local",\
				nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-8].display',\
				interpret: true\
			},\
			"\n\u2467 "\
		]\
	},\
	" - ",\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-8].display',\
		interpret: true\
	}\
]

execute if score <display_places> variable matches 9.. run data modify storage pandamium:local functions."pandamium:impl/leader_boards/get_active_display/*".display append value [\
	{\
		color: "aqua",\
		text: "\u2468 "\
	},\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-9].users[].username',\
		interpret: true,\
		separator: [\
			" - ",\
			{\
				storage: "pandamium:local",\
				nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-9].display',\
				interpret: true\
			},\
			"\n\u2468 "\
		]\
	},\
	" - ",\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-9].display',\
		interpret: true\
	}\
]

execute if score <display_places> variable matches 10.. run data modify storage pandamium:local functions."pandamium:impl/leader_boards/get_active_display/*".display append value [\
	{\
		color: "aqua",\
		text: "\u2469 "\
	},\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-10].users[].username',\
		interpret: true,\
		separator: [\
			" - ",\
			{\
				storage: "pandamium:local",\
				nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-10].display',\
				interpret: true\
			},\
			"\n\u2469 "\
		]\
	},\
	" - ",\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-10].display',\
		interpret: true\
	}\
]

execute if score <display_places> variable matches 11.. run data modify storage pandamium:local functions."pandamium:impl/leader_boards/get_active_display/*".display append value [\
	{\
		color: "aqua",\
		text: "\u246A "\
	},\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-11].users[].username',\
		interpret: true,\
		separator: [\
			" - ",\
			{\
				storage: "pandamium:local",\
				nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-11].display',\
				interpret: true\
			},\
			"\n\u246A "\
		]\
	},\
	" - ",\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-11].display',\
		interpret: true\
	}\
]

execute if score <display_places> variable matches 12.. run data modify storage pandamium:local functions."pandamium:impl/leader_boards/get_active_display/*".display append value [\
	{\
		color: "aqua",\
		text: "\u246B "\
	},\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-12].users[].username',\
		interpret: true,\
		separator: [\
			" - ",\
			{\
				storage: "pandamium:local",\
				nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-12].display',\
				interpret: true\
			},\
			"\n\u246B "\
		]\
	},\
	" - ",\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-12].display',\
		interpret: true\
	}\
]

execute if score <display_places> variable matches 13.. run data modify storage pandamium:local functions."pandamium:impl/leader_boards/get_active_display/*".display append value [\
	{\
		color: "aqua",\
		text: "\u246C "\
	},\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-13].users[].username',\
		interpret: true,\
		separator: [\
			" - ",\
			{\
				storage: "pandamium:local",\
				nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-13].display',\
				interpret: true\
			},\
			"\n\u246C "\
		]\
	},\
	" - ",\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-13].display',\
		interpret: true\
	}\
]

execute if score <display_places> variable matches 14.. run data modify storage pandamium:local functions."pandamium:impl/leader_boards/get_active_display/*".display append value [\
	{\
		color: "aqua",\
		text: "\u246D "\
	},\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-14].users[].username',\
		interpret: true,\
		separator: [\
			" - ",\
			{\
				storage: "pandamium:local",\
				nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-14].display',\
				interpret: true\
			},\
			"\n\u246D "\
		]\
	},\
	" - ",\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-14].display',\
		interpret: true\
	}\
]

execute if score <display_places> variable matches 15.. run data modify storage pandamium:local functions."pandamium:impl/leader_boards/get_active_display/*".display append value [\
	{\
		color: "aqua",\
		text: "\u246E "\
	},\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-15].users[].username',\
		interpret: true,\
		separator: [\
			" - ",\
			{\
				storage: "pandamium:local",\
				nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-15].display',\
				interpret: true\
			},\
			"\n\u246E "\
		]\
	},\
	" - ",\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-15].display',\
		interpret: true\
	}\
]

execute if score <display_places> variable matches 16.. run data modify storage pandamium:local functions."pandamium:impl/leader_boards/get_active_display/*".display append value [\
	{\
		color: "aqua",\
		text: "\u246F "\
	},\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-16].users[].username',\
		interpret: true,\
		separator: [\
			" - ",\
			{\
				storage: "pandamium:local",\
				nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-16].display',\
				interpret: true\
			},\
			"\n\u246F "\
		]\
	},\
	" - ",\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-16].display',\
		interpret: true\
	}\
]

execute if score <display_places> variable matches 17.. run data modify storage pandamium:local functions."pandamium:impl/leader_boards/get_active_display/*".display append value [\
	{\
		color: "aqua",\
		text: "\u2470 "\
	},\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-17].users[].username',\
		interpret: true,\
		separator: [\
			" - ",\
			{\
				storage: "pandamium:local",\
				nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-17].display',\
				interpret: true\
			},\
			"\n\u2470 "\
		]\
	},\
	" - ",\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-17].display',\
		interpret: true\
	}\
]

execute if score <display_places> variable matches 18.. run data modify storage pandamium:local functions."pandamium:impl/leader_boards/get_active_display/*".display append value [\
	{\
		color: "aqua",\
		text: "\u2471 "\
	},\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-18].users[].username',\
		interpret: true,\
		separator: [\
			" - ",\
			{\
				storage: "pandamium:local",\
				nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-18].display',\
				interpret: true\
			},\
			"\n\u2471 "\
		]\
	},\
	" - ",\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-18].display',\
		interpret: true\
	}\
]

execute if score <display_places> variable matches 19.. run data modify storage pandamium:local functions."pandamium:impl/leader_boards/get_active_display/*".display append value [\
	{\
		color: "aqua",\
		text: "\u2472 "\
	},\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-19].users[].username',\
		interpret: true,\
		separator: [\
			" - ",\
			{\
				storage: "pandamium:local",\
				nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-19].display',\
				interpret: true\
			},\
			"\n\u2472 "\
		]\
	},\
	" - ",\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-19].display',\
		interpret: true\
	}\
]

execute if score <display_places> variable matches 20.. run data modify storage pandamium:local functions."pandamium:impl/leader_boards/get_active_display/*".display append value [\
	{\
		color: "aqua",\
		text: "\u2473 "\
	},\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-20].users[].username',\
		interpret: true,\
		separator: [\
			" - ",\
			{\
				storage: "pandamium:local",\
				nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-20].display',\
				interpret: true\
			},\
			"\n\u2473 "\
		]\
	},\
	" - ",\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-20].display',\
		interpret: true\
	}\
]

execute if score <display_places> variable matches 21.. run data modify storage pandamium:local functions."pandamium:impl/leader_boards/get_active_display/*".display append value [\
	{\
		color: "aqua",\
		text: "\u3251 "\
	},\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-21].users[].username',\
		interpret: true,\
		separator: [\
			" - ",\
			{\
				storage: "pandamium:local",\
				nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-21].display',\
				interpret: true\
			},\
			"\n\u3251 "\
		]\
	},\
	" - ",\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-21].display',\
		interpret: true\
	}\
]

execute if score <display_places> variable matches 22.. run data modify storage pandamium:local functions."pandamium:impl/leader_boards/get_active_display/*".display append value [\
	{\
		color: "aqua",\
		text: "\u3252 "\
	},\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-22].users[].username',\
		interpret: true,\
		separator: [\
			" - ",\
			{\
				storage: "pandamium:local",\
				nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-22].display',\
				interpret: true\
			},\
			"\n\u3252 "\
		]\
	},\
	" - ",\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-22].display',\
		interpret: true\
	}\
]

execute if score <display_places> variable matches 23.. run data modify storage pandamium:local functions."pandamium:impl/leader_boards/get_active_display/*".display append value [\
	{\
		color: "aqua",\
		text: "\u3253 "\
	},\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-23].users[].username',\
		interpret: true,\
		separator: [\
			" - ",\
			{\
				storage: "pandamium:local",\
				nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-23].display',\
				interpret: true\
			},\
			"\n\u3253 "\
		]\
	},\
	" - ",\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-23].display',\
		interpret: true\
	}\
]

execute if score <display_places> variable matches 24.. run data modify storage pandamium:local functions."pandamium:impl/leader_boards/get_active_display/*".display append value [\
	{\
		color: "aqua",\
		text: "\u3254 "\
	},\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-24].users[].username',\
		interpret: true,\
		separator: [\
			" - ",\
			{\
				storage: "pandamium:local",\
				nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-24].display',\
				interpret: true\
			},\
			"\n\u3254 "\
		]\
	},\
	" - ",\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-24].display',\
		interpret: true\
	}\
]

execute if score <display_places> variable matches 25.. run data modify storage pandamium:local functions."pandamium:impl/leader_boards/get_active_display/*".display append value [\
	{\
		color: "aqua",\
		text: "\u3255 "\
	},\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-25].users[].username',\
		interpret: true,\
		separator: [\
			" - ",\
			{\
				storage: "pandamium:local",\
				nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-25].display',\
				interpret: true\
			},\
			"\n\u3255 "\
		]\
	},\
	" - ",\
	{\
		storage: "pandamium:local",\
		nbt: 'functions."pandamium:impl/leader_boards/get_active_display/*".entries[-25].display',\
		interpret: true\
	}\
]

data modify storage do:io input set value {storage:"pandamium:local",nbt:'functions."pandamium:impl/leader_boards/get_active_display/*".display[]',interpret:true,separator:"\n"}
function do:text/resolve
data remove storage do:io output.extra[0]
data modify storage pandamium:text input set from storage do:io output
