data modify storage pandamium:local functions."pandamium:triggers/tpa/*".failed_actions append value {\
	"label": [\
		"",\
		{\
			"player": "%username%",\
			"shadow_color": 0\
		},\
		" ",\
		{\
			"text": "",\
			"extra": [""],\
			"strikethrough": true\
		}\
	],\
    "tooltip": [{"color":"red","text":"You cannot send a TPA request to "},""]\
}
function pandamium:utils/get/username
data modify storage pandamium:local functions."pandamium:triggers/tpa/*".failed_actions[-1].label[1].player set from storage pandamium:temp username
function pandamium:utils/resolve_text_component {text_component:{selector:"@s"},write_to:'storage pandamium:local functions."pandamium:triggers/tpa/*".failed_actions[-1].label[3].extra[0]'}
data modify storage pandamium:local functions."pandamium:triggers/tpa/*".failed_actions[-1].tooltip[1] set from storage pandamium:local functions."pandamium:triggers/tpa/*".failed_actions[-1].label[3].extra[0]
