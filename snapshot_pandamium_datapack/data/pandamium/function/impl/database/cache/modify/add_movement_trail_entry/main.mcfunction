# arguments: username, type

# check if entry exists
$execute if data storage pandamium:cache macros.movement_trail.entries[{id:"$(username)-trail"}] run function pandamium:impl/database/cache/modify/remove_movement_trail_entry/main {username:"$(username)"}

# init
$data modify storage pandamium:local functions."pandamium:impl/database/cache/modify/add_movement_trail_entry/*".entry set value {username:"$(username)",id:"$(username)-trail",command:'title @s actionbar {text:"ERR: Invalid particle trail command",color:"red"}'}
$data modify storage pandamium:local functions."pandamium:impl/database/cache/modify/add_movement_trail_entry/*".entry.command set from storage pandamium:dictionary movement_trail_types."$(type)".command

# append
data modify storage pandamium:cache macros.movement_trail.entries append from storage pandamium:local functions."pandamium:impl/database/cache/modify/add_movement_trail_entry/*".entry
execute store result score <index> variable if data storage pandamium:cache macros.movement_trail.entries[]
execute store result storage pandamium:cache macros.movement_trail.entries[-1].index int 1 run scoreboard players remove <index> variable 1

function pandamium:impl/database/cache/modify/add_movement_trail_entry/set_lines with storage pandamium:cache macros.movement_trail.entries[-1]

# update macros.movement_trail.upper_bound
execute store result score <total_entries> variable store result score <offset> variable if data storage pandamium:cache macros.movement_trail.entries[]
scoreboard players operation <offset> variable %= #-10 constant
execute store result storage pandamium:cache macros.movement_trail.upper_bound int 1 run scoreboard players operation <total_entries> variable -= <offset> variable
