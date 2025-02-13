# arguments: uuid, type

# if this entry already exists, remove it
$execute if data storage pandamium:cache macros.entities.entries[{id:"$(uuid)-trail"}] run function pandamium:impl/database/cache/modify/remove_entities_entry/main {username:"$(uuid)"}

# get trail data
$data modify storage pandamium:local functions."pandamium:impl/database/cache/modify/add_entities_entry/*".trail_data set from storage pandamium:dictionary particle_trail_types."$(type)"

# if the trail data does not contain a projectile_command field, do not add entry
execute unless data storage pandamium:local functions."pandamium:impl/database/cache/modify/add_entities_entry/*".trail_data.projectile_command run return fail

# initialise entry
$data modify storage pandamium:local functions."pandamium:impl/database/cache/modify/add_entities_entry/*".entry set value {uuid:"$(uuid)",id:"$(uuid)-trail",commands:['particle minecraft:block_marker{block_state:{Name:"minecraft:test_block",Properties:{mode:"fail"}}}','','']}
data modify storage pandamium:local functions."pandamium:impl/database/cache/modify/add_entities_entry/*".entry.command set from storage pandamium:local functions."pandamium:impl/database/cache/modify/add_entities_entry/*".trail_data.projectile_command

data modify storage pandamium:local functions."pandamium:impl/database/cache/modify/add_entities_entry/*".entry.unload_time set from storage pandamium:local functions."pandamium:impl/database/cache/modify/add_entities_entry/*".unload_time

# add entry
data modify storage pandamium:cache macros.entities.entries append from storage pandamium:local functions."pandamium:impl/database/cache/modify/add_entities_entry/*".entry
execute store result score <index> variable if data storage pandamium:cache macros.entities.entries[]
execute store result storage pandamium:cache macros.entities.entries[-1].index int 1 run scoreboard players remove <index> variable 1

function pandamium:impl/database/cache/modify/add_entities_entry/set_lines with storage pandamium:cache macros.entities.entries[-1]

# update macros.entities.upper_bound
execute store result score <total_entities> variable store result score <offset> variable if data storage pandamium:cache macros.entities.entries[]
scoreboard players operation <offset> variable %= #-10 constant
execute store result storage pandamium:cache macros.entities.upper_bound int 1 run scoreboard players operation <total_entities> variable -= <offset> variable
