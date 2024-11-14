# arguments: username, particle_trail_id

# check if entry exists
$execute if data storage pandamium:cache macros.particles.entries[{id:"$(username)-trail"}] run function pandamium:impl/database/cache/modify/remove_particles_entry/main {username:"$(username)"}

# init
$data modify storage pandamium:local functions."pandamium:impl/database/cache/modify/add_particles_entry/*".entry set value {username:"$(username)",id:"$(username)-trail",command:'title @s actionbar {"text":"ERR: Invalid particle trail command","color":"red"}'}
$data modify storage pandamium:local functions."pandamium:impl/database/cache/modify/add_particles_entry/*".entry.command set from storage pandamium:dictionary particle_trail_ids."$(particle_trail_id)".command

# append
data modify storage pandamium:cache macros.particles.entries append from storage pandamium:local functions."pandamium:impl/database/cache/modify/add_particles_entry/*".entry
execute store result score <index> variable if data storage pandamium:cache macros.particles.entries[]
execute store result storage pandamium:cache macros.particles.entries[-1].index int 1 run scoreboard players remove <index> variable 1

function pandamium:impl/database/cache/modify/add_particles_entry/set_lines with storage pandamium:cache macros.particles.entries[-1]

# update macros.particles.upper_bound
execute store result score <total_particles> variable store result score <offset> variable if data storage pandamium:cache macros.particles.entries[]
scoreboard players operation <offset> variable %= #-10 constant
execute store result storage pandamium:cache macros.particles.upper_bound int 1 run scoreboard players operation <total_particles> variable -= <offset> variable
