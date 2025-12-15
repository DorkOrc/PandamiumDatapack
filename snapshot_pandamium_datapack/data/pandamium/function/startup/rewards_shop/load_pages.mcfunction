data remove storage pandamium:rewards_shop dialogs

data modify storage pandamium:rewards_shop dialogs.main_menu.dialog set value {\
	"type": "minecraft:multi_action",\
	"title": "Pandamium Rewards Shop",\
	"body": [\
		{\
			"type": "minecraft:plain_message",\
			"contents": "{description}",\
			"width": 400\
		}\
	],\
	"after_action": "none",\
	"pause": false,\
	"exit_action": {\
		"label": "Done",\
		"action": {\
			"type": "minecraft:run_command",\
			"command": "/trigger rewards_shop set 1000001"\
		}\
	},\
	"columns": 1,\
	"actions": []\
}

##
## Misc
##
data modify storage pandamium:rewards_shop dialogs.misc.dialog set value {\
	"type": "minecraft:confirmation",\
	"title": "Pandamium Rewards Shop",\
	"body": [\
		{\
			"type": "minecraft:plain_message",\
			"contents": [\
				"",\
				{\
					"underlined": true,\
					"shadow_color": 0,\
					"text": "                                                                "\
				},\
				{\
					"bold": true,\
					"text": "\n\n\nMiscellaneous Rewards\n"\
				},\
				{\
					"bold": false,\
					"underlined": true,\
					"shadow_color": 0,\
					"text": "\n                                                                "\
				}\
			],\
			"width": 400\
		}\
	],\
	"pause": false,\
	"after_action": "none",\
	"yes": {\
		"label": "Back",\
		"action": {\
			"type": "run_command",\
			"command": "trigger vote_shop set 1"\
		}\
	},\
	"no": {\
		"label": "Done",\
		"action": {\
			"type": "run_command",\
			"command": "trigger vote_shop set 1000001"\
		}\
	}\
}
function pandamium:startup/rewards_shop/load_pages/append_item {dialog_name: "misc", reward_id: "diamond"}
function pandamium:startup/rewards_shop/load_pages/append_item {dialog_name: "misc", reward_id: "5_experience_bottles"}
function pandamium:startup/rewards_shop/load_pages/append_item {dialog_name: "misc", reward_id: "golden_apple"}
function pandamium:startup/rewards_shop/load_pages/append_item {dialog_name: "misc", reward_id: "endermite_minecart"}
function pandamium:startup/rewards_shop/load_pages/append_item {dialog_name: "misc", reward_id: "enchanted_golden_apple"}
function pandamium:startup/rewards_shop/load_pages/append_item {dialog_name: "misc", reward_id: "mending_enchanted_book"}
function pandamium:startup/rewards_shop/load_pages/append_item {dialog_name: "misc", reward_id: "swift_sneak_iii_enchanted_book"}
function pandamium:startup/rewards_shop/load_pages/append_item {dialog_name: "misc", reward_id: "bedrock_breaker"}
function pandamium:startup/rewards_shop/load_pages/append_item {dialog_name: "misc", reward_id: "blindness_splash_potion"}
function pandamium:startup/rewards_shop/load_pages/append_item {dialog_name: "misc", reward_id: "dwarven_potion"}
function pandamium:startup/rewards_shop/load_pages/append_item {dialog_name: "misc", reward_id: "knockback_stick"}
function pandamium:startup/rewards_shop/load_pages/append_item {dialog_name: "misc", reward_id: "name_tag"}
function pandamium:startup/rewards_shop/load_pages/append_item {dialog_name: "misc", reward_id: "book_and_quill"}
function pandamium:startup/rewards_shop/load_pages/append_item {dialog_name: "misc", reward_id: "pandamium_guidebook"}
function pandamium:startup/rewards_shop/load_pages/append_random_online_player_head {dialog_name: "misc"}
function pandamium:startup/rewards_shop/load_pages/append_own_player_head {dialog_name: "misc"}
function pandamium:startup/rewards_shop/load_pages/append_item {dialog_name: "misc", reward_id: "shulker"}
data modify storage pandamium:rewards_shop dialogs.main_menu.dialog.actions append value {label:"Miscellaneous Rewards",tooltip:["Common rewards and unique items",{color:"dark_gray",text:"\n• Diamond\n• 5 Experience Bottles\n• Golden Apple\n• Endermite Minecart\n• Enchanted Golden Apple\n• Mending Enchanted Book\n• Swift Sneak III Enchanted Book\n• Blindndess Splash Potion\n• Dwarven Potion\n• Knockback Stick\n• Name Tag\n• Book & Quill\n• Pandamium Guidebook\n• Random Online Player's Head\n• Your Head"}],width:150,action:{type:"minecraft:run_command",command:"trigger rewards_shop set 101"}}

##
## Chase The Skies
##
data modify storage pandamium:rewards_shop dialogs.chase_the_skies.dialog set value {\
	"type": "minecraft:confirmation",\
	"title": "Pandamium Rewards Shop",\
	"body": [\
		{\
			"type": "minecraft:plain_message",\
			"contents": [\
				"",\
				{\
					"underlined": true,\
					"shadow_color": 0,\
					"text": "                                                                "\
				},\
				{\
					"bold": true,\
					"text": "\n\n\nChase The Skies Drop\n"\
				},\
				{\
					"bold": false,\
					"underlined": true,\
					"shadow_color": 0,\
					"text": "\n                                                                "\
				}\
			],\
			"width": 400\
		}\
	],\
	"pause": false,\
	"after_action": "none",\
	"yes": {\
		"label": "Back",\
		"action": {\
			"type": "run_command",\
			"command": "trigger vote_shop set 1"\
		}\
	},\
	"no": {\
		"label": "Done",\
		"action": {\
			"type": "run_command",\
			"command": "trigger vote_shop set 1000001"\
		}\
	}\
}
function pandamium:startup/rewards_shop/load_pages/append_item {dialog_name: "chase_the_skies", reward_id: "dried_ghast"}
function pandamium:startup/rewards_shop/load_pages/append_item {dialog_name: "chase_the_skies", reward_id: "tears_music_disc"}
function pandamium:startup/rewards_shop/load_pages/append_item {dialog_name: "chase_the_skies", reward_id: "dennis_painting"}
function pandamium:startup/rewards_shop/load_pages/append_item {dialog_name: "chase_the_skies", reward_id: "lava_chicken_music_disc"}
data modify storage pandamium:rewards_shop dialogs.main_menu.dialog.actions append value {label:'"Chase The Skies" Drop',tooltip:['A selection of items from the "Chase The Skies" game drop',{color:"dark_gray",text:"\n• Dried Ghast\n• Tears Music Disc\n• Dennis Painting\n• Lava Chicken Music Disc"}],width:150,action:{type:"minecraft:run_command",command:"trigger rewards_shop set 102"}}

##
## The Copper Age
##
data modify storage pandamium:rewards_shop dialogs.the_copper_age.dialog set value {\
	"type": "minecraft:confirmation",\
	"title": "Pandamium Rewards Shop",\
	"body": [\
		{\
			"type": "minecraft:plain_message",\
			"contents": [\
				"",\
				{\
					"underlined": true,\
					"shadow_color": 0,\
					"text": "                                                                "\
				},\
				{\
					"bold": true,\
					"text": "\n\n\nThe Copper Age Drop\n"\
				},\
				{\
					"bold": false,\
					"underlined": true,\
					"shadow_color": 0,\
					"text": "\n                                                                "\
				}\
			],\
			"width": 400\
		}\
	],\
	"pause": false,\
	"after_action": "none",\
	"yes": {\
		"label": "Back",\
		"action": {\
			"type": "run_command",\
			"command": "trigger vote_shop set 1"\
		}\
	},\
	"no": {\
		"label": "Done",\
		"action": {\
			"type": "run_command",\
			"command": "trigger vote_shop set 1000001"\
		}\
	}\
}
function pandamium:startup/rewards_shop/load_pages/append_item {dialog_name: "the_copper_age", reward_id: "the_copper_age_loot_bundle"}
data modify storage pandamium:rewards_shop dialogs.main_menu.dialog.actions append value {label:'"The Copper Age" Drop',tooltip:['A selection of items from the "The Copper Age" game drop',{color:"dark_gray",text:"\n• Dried Ghast\n• Tears Music Disc\n• Dennis Painting\n• Lava Chicken Music Disc"}],width:150,action:{type:"minecraft:run_command",command:"trigger rewards_shop set 103"}}

##
## All
##
data modify storage pandamium:rewards_shop dialogs.all.dialog set value {\
	"type": "minecraft:confirmation",\
	"title": "Pandamium Rewards Shop",\
	"body": [],\
	"pause": false,\
	"after_action": "none",\
	"yes": {\
		"label": "Back",\
		"action": {\
			"type": "run_command",\
			"command": "trigger vote_shop set 1"\
		}\
	},\
	"no": {\
		"label": "Done",\
		"action": {\
			"type": "run_command",\
			"command": "trigger vote_shop set 1000001"\
		}\
	}\
}
data modify storage pandamium:rewards_shop dialogs.all.dialog.body append from storage pandamium:rewards_shop dialogs.misc.dialog.body[]
data modify storage pandamium:rewards_shop dialogs.all.dialog.body append from storage pandamium:rewards_shop dialogs.chase_the_skies.dialog.body[]
data modify storage pandamium:rewards_shop dialogs.all.dialog.body append from storage pandamium:rewards_shop dialogs.the_copper_age.dialog.body[]
data modify storage pandamium:rewards_shop dialogs.main_menu.dialog.actions append value {label:{italic:true,text:"Browse All"},tooltip:"Scroll through all sections at once",width:100,action:{type:"minecraft:run_command",command:"trigger rewards_shop set 201"}}
