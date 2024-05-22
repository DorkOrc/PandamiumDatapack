# select (create) entry
# uuid is already there as set in the "load/self" function
#data modify storage pandamium.db.entities:io selected.entry merge value {}

# get index
execute store result storage pandamium.db.entities:io selected.index int 1 store result storage pandamium.db.entities:data arguments.index int 1 store result score <index> variable if data storage pandamium.db.entities:data entries[]

# set index
function pandamium:impl/database/entities/create/set_index with storage pandamium.db.entities:data arguments

# temporary initialisation for entities in the spawn_area (remove when build server auto-import stuff is done)
execute if entity @s[tag=spawn_protected,predicate=pandamium:in_spawn] run data modify storage pandamium.db.entities:io selected.entry.imported set value 1b

# append entry
data modify storage pandamium.db.entities:data entries append from storage pandamium.db.entities:io selected.entry
