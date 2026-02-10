execute at @s run particle minecraft:falling_dust{block_state:"minecraft:white_wool"} ~ ~0.5 ~ 0.5 0.4 0.5 0 10 force @a[tag=edit_entity.player]
execute at @s anchored eyes run particle minecraft:falling_dust{block_state:"minecraft:white_wool"} ^ ^ ^ 0.5 0.4 0.5 0 10 force @a[tag=edit_entity.player]

function pandamium:entity/custom_name/restore_from_copy

data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".target set from entity @s UUID
function pandamium:utils/resolve_text_component {text_component:{selector:"@s"},write_to:'storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.title'}

# spawn protection
execute at @s if predicate pandamium:in_spawn run return run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.body append value {type:"minecraft:plain_message",contents:"Mobs at spawn cannot be edited.",width:400}
#execute unless score <senior_moderator_perms> variable matches 1 at @s if predicate pandamium:in_spawn run return run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.body append value {type:"minecraft:plain_message",contents:"Mobs at spawn cannot be edited.",width:400}
#execute if score <senior_moderator_perms> variable matches 1 at @s if predicate pandamium:in_spawn run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.body append value {type:"minecraft:plain_message",contents:"You may edit mobs at spawn as you have senior moderator permissions.",width:400}

# ownership
execute store success score <has_owner> variable store success score <belongs_to_another_player> variable if data entity @s Owner
execute if score <belongs_to_another_player> variable matches 1 on owner if entity @s[tag=edit_entity.player] run scoreboard players set <belongs_to_another_player> variable 0
execute if score <has_owner> variable matches 1 if score <belongs_to_another_player> variable matches 0 run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.body append value {type:"minecraft:plain_message",contents:"You are the owner of this mob.\nOther players cannot change several of these attributes.\nThey can still change the name unless you lock it.",width:400}
execute if score <belongs_to_another_player> variable matches 1 run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".uuid set from entity @s Owner
execute if score <belongs_to_another_player> variable matches 1 run function pandamium:utils/database/players/load/from_uuid with storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*"
execute if score <belongs_to_another_player> variable matches 1 if data storage pandamium.db.players:io selected run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.body append value {type:"minecraft:plain_message",contents:[""," is the owner of this pet.\nYou cannot edit its attributes."],width:400}
execute if score <belongs_to_another_player> variable matches 1 if data storage pandamium.db.players:io selected run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.body[-1].contents[0] set from storage pandamium.db.players:io selected.entry.username
execute if score <belongs_to_another_player> variable matches 1 unless data storage pandamium.db.players:io selected run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.body append value {type:"minecraft:plain_message",contents:["This pet is owned by another player.\nYou cannot edit its attributes."],width:400}
scoreboard players set <belongs_to_me> variable 0
execute if score <has_owner> variable matches 1 if score <belongs_to_another_player> variable matches 0 run scoreboard players set <belongs_to_me> variable 1

## Actions
# set custom name
execute unless predicate pandamium:entity/custom_name/forced unless entity @s[predicate=pandamium:in_spawn] unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{components:{"minecraft:custom_name":{text:"#",extra:[""]}}}} run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.actions append value {\
	"label": "Name \"#\"",\
	"tooltip": "Use this name tag as intended.",\
	"action": {\
		"type": "minecraft:run_command",\
		"command": "trigger edit_entity set -103"\
	}\
}

# remove custom name
execute unless predicate pandamium:entity/custom_name/forced unless entity @s[predicate=pandamium:in_spawn] if predicate pandamium:entity/has_custom_name run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.actions append value {\
	"label": "Remove Name",\
	"tooltip": "Remove the custom name from this mob.",\
	"action": {\
		"type": "minecraft:run_command",\
		"command": "trigger edit_entity set -105"\
	}\
}

# toggle forced custom name
execute if score <belongs_to_another_player> variable matches 0 unless entity @s[type=#pandamium:bucketable] unless predicate pandamium:entity/custom_name/forced run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.actions append value {\
	"label": "Lock Name",\
	"tooltip": "Prevent players from naming, renaming, or unnaming this mob.",\
	"action": {\
		"type": "minecraft:run_command",\
		"command": "trigger edit_entity set -106"\
	}\
}
execute if score <belongs_to_another_player> variable matches 0 unless entity @s[type=#pandamium:bucketable] if predicate pandamium:entity/custom_name/forced run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.actions append value {\
	"label": "Unlock Name",\
	"tooltip": "Allow this mob to be named, renamed, or unnamed.",\
	"action": {\
		"type": "minecraft:run_command",\
		"command": "trigger edit_entity set -106"\
	}\
}

# toggle sounds
execute unless score <belongs_to_another_player> variable matches 1 unless entity @s[type=#pandamium:edit_entity/cannot_be_silenced] unless data entity @s {Silent:true} run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.actions append value {\
	"label": "Disable Sounds",\
	"tooltip": "Prevent this mob from making noises.",\
	"action": {\
		"type": "minecraft:run_command",\
		"command": "trigger edit_entity set -101"\
	}\
}
execute unless score <belongs_to_another_player> variable matches 1 unless entity @s[type=#pandamium:edit_entity/cannot_be_silenced] if data entity @s {Silent:true} run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.actions append value {\
	"label": "Enable Sounds",\
	"tooltip": "Allow this mob to make noises.",\
	"action": {\
		"type": "minecraft:run_command",\
		"command": "trigger edit_entity set -101"\
	}\
}

# mount
#execute unless score <belongs_to_another_player> variable matches 1 unless entity @s[type=#pandamium:edit_entity/cannot_be_mounted] unless predicate pandamium:entity/is_baby_mob run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.actions append value {\
#	"label": "Mount",\
#	"tooltip": "Sit onto this mob.",\
#	"action": {\
#		"type": "minecraft:run_command",\
#		"command": "trigger edit_entity set -104"\
#	}\
#}

# lock AgeLocked
execute if score <belongs_to_me> variable matches 1 unless entity @s[type=#pandamium:bucketable] unless predicate pandamium:entity/is_forced_baby unless entity @s[predicate=pandamium:in_spawn] if data entity @s {AgeLocked:true} run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.actions append value {\
	"label": "Enforce Age Lock",\
	"tooltip": "Prevent players from unlocking this mob's age with a golden dandelion.",\
	"action": {\
		"type": "minecraft:run_command",\
		"command": "trigger edit_entity set -102"\
	}\
}
execute if score <belongs_to_me> variable matches 1 unless entity @s[type=#pandamium:bucketable] if predicate pandamium:entity/is_forced_baby unless entity @s[predicate=pandamium:in_spawn] if data entity @s {AgeLocked:true} run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.actions append value {\
	"label": "Unenforce Age Lock",\
	"tooltip": "Allow players to unlock this mob's age with a golden dandelion.",\
	"action": {\
		"type": "minecraft:run_command",\
		"command": "trigger edit_entity set -102"\
	}\
}
