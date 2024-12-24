data modify storage pandamium:local functions."pandamium:utils/database/stored_items/load_new" set value {}

# init if database is empty
execute unless data storage pandamium.db.stored_items:data entries[0] unless data storage pandamium.db.stored_items:data reuse_slots[0] run function pandamium:impl/database/stored_items/create/set_empty_database_values

# select (create) entry
data modify storage pandamium.db.stored_items:io selected.entry set value {}

# set stored_item_id
execute store result score <stored_item_id> variable run data get storage pandamium.db.stored_items:data last_stored_item_id
scoreboard players add <stored_item_id> variable 1
execute if score <stored_item_id> variable matches ..1 run scoreboard players set <stored_item_id> variable 2
execute store result storage pandamium:local functions."pandamium:utils/database/stored_items/load_new".stored_item_id int 1 store result storage pandamium.db.stored_items:io selected.entry.stored_item_id int 1 store result storage pandamium.db.stored_items:data last_stored_item_id int 1 run scoreboard players get <stored_item_id> variable

# set slot
execute store success score <reuse_slot> variable if data storage pandamium.db.stored_items:data reuse_slots[0]
execute if score <reuse_slot> variable matches 0 run function pandamium:impl/database/stored_items/create/set_new_slot
execute if score <reuse_slot> variable matches 1 run data modify storage pandamium.db.stored_items:io selected.entry merge from storage pandamium.db.stored_items:data reuse_slots[0]
execute if score <reuse_slot> variable matches 1 run data remove storage pandamium.db.stored_items:data reuse_slots[0]

# place new barrel if necessary, then set the slot to air
function pandamium:impl/database/stored_items/create/initialise_slot with storage pandamium.db.stored_items:io selected.entry

# set index
execute store result storage pandamium.db.stored_items:io selected.index int 1 store result storage pandamium:local functions."pandamium:utils/database/stored_items/load_new".index int 1 store result score <index> variable if data storage pandamium.db.stored_items:data entries[]
function pandamium:impl/database/stored_items/create/set_index with storage pandamium:local functions."pandamium:utils/database/stored_items/load_new"

# append entry
data modify storage pandamium.db.stored_items:data entries append from storage pandamium.db.stored_items:io selected.entry

# return
return run scoreboard players get <stored_item_id> variable
