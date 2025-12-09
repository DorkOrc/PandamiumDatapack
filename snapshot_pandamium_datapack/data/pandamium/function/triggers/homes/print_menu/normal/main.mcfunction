data modify storage pandamium:local functions."pandamium:triggers/homes/*".dialog set value {\
	"type": "minecraft:multi_action",\
	"title": "Your Homes",\
	"body": [\
		{\
			"type": "minecraft:plain_message",\
			"contents": "Use this menu to create, name, delete, or teleport to your personal homes.",\
			"width": 400\
		}\
	],\
	"after_action": "none",\
    "pause": false,\
	"exit_action": {\
		"label": {\
			"translate": "gui.done"\
		},\
        "action": {\
            "type": "minecraft:run_command",\
            "command": "trigger homes set -101"\
        }\
	},\
	"columns": 2,\
	"actions": []\
}

scoreboard players set <has_available_home_slot> variable 0
function pandamium:triggers/homes/print_menu/normal/list
execute if score <has_available_home_slot> variable matches 1 run data modify storage pandamium:local functions."pandamium:triggers/homes/*".dialog.actions append value {label:{player:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjk5OWIxNGFhYWFiY2U3ZGYyMjk4Yzc5NTcwZWQ2ZjNlM2RkNTY0ODZjOWEwM2Q3YWQzZDc1N2ZlODc2ZDI0MyJ9fX0="}]},color:"#FFFFFF",shadow_color:0},tooltip:"Click to set a new home where you are standing",width:20,action:{type:"minecraft:run_command",command:"trigger homes set -102"}}

function pandamium:utils/show_dialog with storage pandamium:local functions."pandamium:triggers/homes/*"
