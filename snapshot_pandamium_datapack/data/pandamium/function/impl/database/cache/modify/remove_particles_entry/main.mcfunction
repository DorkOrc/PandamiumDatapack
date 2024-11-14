# arguments: username

# check if entry exists
$execute unless data storage pandamium:cache macros.particles.entries[{id:"$(username)-trail"}] run return fail

# init
$data modify storage pandamium:local functions."pandamium:impl/database/cache/modify/remove_particles_entry/*".target_index set from storage pandamium:cache macros.particles.entries[{id:"$(username)-trail"}].index
data modify storage pandamium:local functions."pandamium:impl/database/cache/modify/remove_particles_entry/*".top_index set from storage pandamium:cache macros.particles.entries[-1].index

# modify lines, swap entries, pop newly topmost entry
function pandamium:impl/database/cache/modify/remove_particles_entry/set_lines with storage pandamium:local functions."pandamium:impl/database/cache/modify/remove_particles_entry/*"

# update macros.particles.upper_bound
execute store result score <total_particles> variable store result score <offset> variable if data storage pandamium:cache macros.particles.entries[]
scoreboard players operation <offset> variable %= #-10 constant
execute store result storage pandamium:cache macros.particles.upper_bound int 1 run scoreboard players operation <total_particles> variable -= <offset> variable
