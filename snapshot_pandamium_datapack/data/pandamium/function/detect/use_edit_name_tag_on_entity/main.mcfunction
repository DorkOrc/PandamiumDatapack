advancement revoke @s only pandamium:detect/use_edit_name_tag_on_entity

data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*" set value {\
	dialog: {\
		"type": "minecraft:multi_action",\
		"title": "",\
		"can_close_with_escape": true,\
		"pause": false,\
		"after_action": "close",\
		"exit_action": {\
			"label": {\
				"translate": "gui.done"\
			},\
			"action": {\
				"type": "minecraft:run_command",\
				"command": "trigger edit_entity set -1"\
			}\
		},\
		"actions": []\
	}\
}

tag @s remove pandamium.edit_entity
scoreboard players reset @s edit_entity
dialog clear @s

#execute store success score <senior_moderator_perms> variable if predicate pandamium:player/min_staff_perms/senior_moderator

tag @s add edit_entity.player
execute anchored eyes positioned ^ ^ ^ as @n[distance=..10,predicate=pandamium:entity/custom_name_is_edit_key] run function pandamium:detect/use_edit_name_tag_on_entity/as_entity
tag @s remove edit_entity.player
execute anchored eyes positioned ^ ^ ^ as @e[distance=..20,predicate=pandamium:entity/custom_name_is_edit_key] run function pandamium:entity/custom_name/restore_from_copy
execute if data storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".target run function pandamium:detect/use_edit_name_tag_on_entity/as_player

# return name tag
execute if entity @s[gamemode=creative] run return 1
execute unless items entity @s weapon.mainhand * run return run item replace entity @s weapon.mainhand with name_tag[custom_name="#"]
give @s name_tag[custom_name="#"]
