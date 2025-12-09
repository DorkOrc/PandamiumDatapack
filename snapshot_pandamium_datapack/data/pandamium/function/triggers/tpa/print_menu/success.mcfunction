# arguments: id

$data modify storage pandamium:local functions."pandamium:triggers/tpa/*".dialog.actions append value {\
	"label": [\
		{\
			"player": "%username%",\
			"shadow_color": 0\
		},\
		" ",\
		"%username%"\
	],\
    "tooltip": ["Click to send a teleport request\nto ",""],\
    "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger tpa set $(id)"\
    }\
}
function pandamium:utils/get/username
data modify storage pandamium:local functions."pandamium:triggers/tpa/*".dialog.actions[-1].label[0].player set from storage pandamium:temp username
function pandamium:utils/resolve_text_component {text_component:{selector:"@s"},write_to:'storage pandamium:local functions."pandamium:triggers/tpa/*".dialog.actions[-1].label[2]'}
data modify storage pandamium:local functions."pandamium:triggers/tpa/*".dialog.actions[-1].tooltip[1] set from storage pandamium:local functions."pandamium:triggers/tpa/*".dialog.actions[-1].label[2]
