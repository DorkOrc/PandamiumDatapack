execute at @s run particle minecraft:falling_dust{block_state:"minecraft:white_wool"} ~ ~0.5 ~ 0.5 0.4 0.5 0 10 force @a[tag=edit_entity.player]
execute at @s anchored eyes run particle minecraft:falling_dust{block_state:"minecraft:white_wool"} ^ ^ ^ 0.5 0.4 0.5 0 10 force @a[tag=edit_entity.player]

function pandamium:entity/restore_custom_name_copy

data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".target set from entity @s UUID
function pandamium:utils/resolve_text_component {text_component:{selector:"@s"},write_to:'storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.title'}

# spawn protection
execute unless score <senior_moderator_perms> variable matches 1 at @s if predicate pandamium:in_spawn run return run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.body append value {type:"minecraft:plain_message",contents:"Mobs at spawn cannot be edited.",width:400}
execute if score <senior_moderator_perms> variable matches 1 at @s if predicate pandamium:in_spawn run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.body append value {type:"minecraft:plain_message",contents:"You may edit mobs at spawn as you have senior moderator permissions.",width:400}

# ownership
execute store success score <has_owner> variable store success score <belongs_to_another_player> variable if data entity @s Owner
execute if score <belongs_to_another_player> variable matches 1 on owner if entity @s[tag=edit_entity.player] run scoreboard players set <belongs_to_another_player> variable 0
execute if score <has_owner> variable matches 1 if score <belongs_to_another_player> variable matches 0 run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.body append value {type:"minecraft:plain_message",contents:"You are the owner of this mob.\nOther players cannot change several of these attributes.\nThey can still change the name unless you lock it.",width:400}
execute if score <belongs_to_another_player> variable matches 1 run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".uuid set from entity @s Owner
execute if score <belongs_to_another_player> variable matches 1 run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".uuid0 set from storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".uuid[0]
execute if score <belongs_to_another_player> variable matches 1 run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".uuid1 set from storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".uuid[1]
execute if score <belongs_to_another_player> variable matches 1 run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".uuid2 set from storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".uuid[2]
execute if score <belongs_to_another_player> variable matches 1 run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".uuid3 set from storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".uuid[3]
execute if score <belongs_to_another_player> variable matches 1 run function pandamium:utils/database/players/load/from_uuid with storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*"
execute if score <belongs_to_another_player> variable matches 1 if data storage pandamium.db.players:io selected run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.body append value {type:"minecraft:plain_message",contents:[""," is the owner of this pet.\nYou cannot edit its attributes."],width:400}
execute if score <belongs_to_another_player> variable matches 1 if data storage pandamium.db.players:io selected run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.body[-1].contents[0] set from storage pandamium.db.players:io selected.entry.username
execute if score <belongs_to_another_player> variable matches 1 unless data storage pandamium.db.players:io selected run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.body append value {type:"minecraft:plain_message",contents:["This pet is owned by another player.\nYou cannot edit its attributes."],width:400}


# name
execute unless predicate pandamium:entity/forced_custom_name at @s unless entity @s[predicate=pandamium:in_spawn] run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.actions append value {label:'Name "#"',action:{type:"minecraft:run_command",command:"trigger edit_entity set -103"}}
execute unless predicate pandamium:entity/forced_custom_name at @s unless entity @s[predicate=pandamium:in_spawn] if predicate pandamium:entity/has_custom_name run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.actions append value {label:"Remove Name",action:{type:"minecraft:run_command",command:"trigger edit_entity set -105"}}

execute if score <belongs_to_another_player> variable matches 0 unless predicate pandamium:entity/forced_custom_name if predicate pandamium:entity/has_custom_name run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.actions append value {\
    "label": "Lock Name",\
    "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger edit_entity set -106"\
    }\
}
execute if score <belongs_to_another_player> variable matches 0 if predicate pandamium:entity/forced_custom_name run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.actions append value {\
    "label": "Unlock Name",\
    "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger edit_entity set -106"\
    }\
}

# silent
execute unless score <belongs_to_another_player> variable matches 1 unless entity @s[type=#pandamium:edit_entity/cannot_be_silenced] unless data entity @s {Silent:true} run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.actions append value {\
    "label": "Disable Sounds",\
    "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger edit_entity set -101"\
    }\
}
execute unless score <belongs_to_another_player> variable matches 1 unless entity @s[type=#pandamium:edit_entity/cannot_be_silenced] if data entity @s {Silent:true} run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.actions append value {\
    "label": "Enable Sounds",\
    "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger edit_entity set -101"\
    }\
}


# aging
execute unless score <belongs_to_another_player> variable matches 1 if predicate pandamium:entity/is_baby unless predicate pandamium:entity/forced_baby run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.actions append value {\
    "label": "Pause Aging",\
    "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger edit_entity set -102"\
    }\
}
execute unless score <belongs_to_another_player> variable matches 1 if predicate pandamium:entity/is_baby if predicate pandamium:entity/forced_baby run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.actions append value {\
    "label": "Unpause Aging",\
    "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger edit_entity set -102"\
    }\
}


# mounting
execute unless score <belongs_to_another_player> variable matches 1 unless entity @s[type=#pandamium:edit_entity/cannot_be_mounted] unless predicate pandamium:entity/is_baby run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.actions append value {\
    "label": "Mount",\
    "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger edit_entity set -104"\
    }\
}
