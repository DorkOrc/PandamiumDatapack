# arguments: uuid, type

# if this entry already exists, remove it
$execute if data storage pandamium:cache macros.projectile_trail.entries[{id:"$(uuid)-trail"}] run function pandamium:impl/database/cache/modify/remove_projectile_trail_entry/main {username:"$(uuid)"}

# get trail data
$data modify storage pandamium:local functions."pandamium:impl/database/cache/modify/add_projectile_trail_entry/*".trail_data set from storage pandamium:dictionary projectile_trail_types."$(type)"

# if the trail data does not contain a "command" field, do not add entry
execute unless data storage pandamium:local functions."pandamium:impl/database/cache/modify/add_projectile_trail_entry/*".trail_data.command run return fail

# initialise entry
$data modify storage pandamium:local functions."pandamium:impl/database/cache/modify/add_projectile_trail_entry/*".entry set value {uuid:"$(uuid)",id:"$(uuid)-trail",commands:['particle minecraft:block_marker{block_state:{Name:"minecraft:test_block",Properties:{mode:"fail"}}}','','']}
data modify storage pandamium:local functions."pandamium:impl/database/cache/modify/add_projectile_trail_entry/*".entry.command set from storage pandamium:local functions."pandamium:impl/database/cache/modify/add_projectile_trail_entry/*".trail_data.command
data modify storage pandamium:local functions."pandamium:impl/database/cache/modify/add_projectile_trail_entry/*".entry.unload_time set from storage pandamium:local functions."pandamium:impl/database/cache/modify/add_projectile_trail_entry/*".unload_time

# add entry
data modify storage pandamium:cache macros.projectile_trail.entries append from storage pandamium:local functions."pandamium:impl/database/cache/modify/add_projectile_trail_entry/*".entry
execute store result score <index> variable if data storage pandamium:cache macros.projectile_trail.entries[]
execute store result storage pandamium:cache macros.projectile_trail.entries[-1].index int 1 run scoreboard players remove <index> variable 1

function pandamium:impl/database/cache/modify/add_projectile_trail_entry/set_lines with storage pandamium:cache macros.projectile_trail.entries[-1]

# update macros.projectile_trail.upper_bound
execute store result score <total_entries> variable store result score <offset> variable if data storage pandamium:cache macros.projectile_trail.entries[]
scoreboard players operation <offset> variable %= #-10 constant
execute store result storage pandamium:cache macros.projectile_trail.upper_bound int 1 run scoreboard players operation <total_entries> variable -= <offset> variable
