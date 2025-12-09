data modify storage pandamium:local functions."pandamium:triggers/tpa/*".dialog set value {\
	"type": "minecraft:multi_action",\
	"title": "Teleport to Friends",\
	"body": [\
		{\
			"type": "minecraft:plain_message",\
			"contents": "Choose a name from the list below to send that player a TPA request.\n\nThey will then be notified in chat and must accept the request.",\
			"width": 400\
		}\
	],\
	"exit_action": {\
		"label": {\
			"translate": "gui.done"\
		}\
	},\
	"columns": 1,\
	"actions": []\
}


#
execute if score @s tpa_request.sender_id matches 1.. run scoreboard players operation <sender_id> variable = @s tpa_request.sender_id
execute if score @s tpa_request.sender_id matches 1.. as @a if score @s id = <sender_id> variable run function pandamium:triggers/tpa/print_menu/append_incoming_request
scoreboard players operation <sender_id> variable = @s id
execute as @a if score @s tpa_request.sender_id = <sender_id> variable run function pandamium:triggers/tpa/print_menu/append_outgoing_request


# List
data modify storage pandamium:local functions."pandamium:triggers/tpa/*".dialog.body append value {type:"minecraft:plain_message",contents:["\n",{bold:true,text:"Player List:",underlined:true}]}
data modify storage pandamium:local functions."pandamium:triggers/tpa/*".failed_actions set value []
execute store result score <source_is_guest> variable if score @s gameplay_perms matches 0
scoreboard players operation <source_id> variable = @s id
execute as @a run function pandamium:triggers/tpa/print_menu/as_player
data modify storage pandamium:local functions."pandamium:triggers/tpa/*".dialog.actions append from storage pandamium:local functions."pandamium:triggers/tpa/*".failed_actions[]

execute unless data storage pandamium:local functions."pandamium:triggers/tpa/*".dialog.actions[0] run data modify storage pandamium:local functions."pandamium:triggers/tpa/*".dialog.type set value "minecraft:notice"
execute unless data storage pandamium:local functions."pandamium:triggers/tpa/*".dialog.actions[0] run data modify storage pandamium:local functions."pandamium:triggers/tpa/*".dialog.action set from storage pandamium:local functions."pandamium:triggers/tpa/*".dialog.exit_action
execute unless data storage pandamium:local functions."pandamium:triggers/tpa/*".dialog.actions[0] run data modify storage pandamium:local functions."pandamium:triggers/tpa/*".dialog.body append value {\
	"type": "minecraft:plain_message",\
	"contents": {"color":"red","text":"Looks like there is no one available to teleport to :("},\
	"width": 400\
}\

function pandamium:utils/show_dialog with storage pandamium:local functions."pandamium:triggers/tpa/*"

tellraw @a {storage:"pandamium:local",nbt:'functions."pandamium:triggers/tpa/*".dialog'}
