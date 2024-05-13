# recycle old id if possible
data modify storage pandamium:temp recyclable_entries set value []
data modify storage pandamium:temp recyclable_entries append from storage pandamium.db.stored_items:data entries[{recyclable:1b}].stored_item_id
execute store success score <is_recycled> variable if data storage pandamium:temp recyclable_entries[0]
execute if score <is_recycled> variable matches 1 store result storage pandamium:templates macro.stored_item_id.stored_item_id int 1 store result score <stored_item_id> variable run data get storage pandamium:temp recyclable_entries[0]
execute if score <is_recycled> variable matches 1 run function pandamium:utils/database/stored_items/load/from_stored_item_id with storage pandamium:templates macro.stored_item_id
execute if score <is_recycled> variable matches 1 run data remove storage pandamium.db.stored_items:io selected.entry.recyclable
execute if score <is_recycled> variable matches 1 run return run scoreboard players get <stored_item_id> variable

# get index
execute if score <is_recycled> variable matches 0 store result storage pandamium.db.stored_items:io selected.index int 1 store result storage pandamium:templates macro.stored_item_id__index.index int 1 store result score <index> variable if data storage pandamium.db.stored_items:data entries[]

# select (create) entry
data modify storage pandamium.db.stored_items:io selected.entry set value {stored_item_id: 0, x: 128000, y: 0, z: 128000, slot: 0b}

# set stored_item_id
execute unless data storage pandamium.db.stored_items:data entries[0] run function pandamium:impl/database/stored_items/create/set_empty_database_values

execute store result score <stored_item_id> variable run data get storage pandamium.db.stored_items:data last_stored_item_id
scoreboard players add <stored_item_id> variable 1
execute if score <stored_item_id> variable matches ..1 run scoreboard players set <stored_item_id> variable 2
execute store result storage pandamium:templates macro.stored_item_id__index.stored_item int 1 store result storage pandamium.db.stored_items:io selected.entry.stored_item_id int 1 store result storage pandamium.db.stored_items:data last_stored_item_id int 1 run scoreboard players get <stored_item_id> variable

# set index
function pandamium:impl/database/stored_items/create/set_index with storage pandamium:templates macro.stored_item_id__index

# create new slot
function pandamium:impl/database/stored_items/create/set_new_slot

# place new barrel if necessary, then set the slot to air
function pandamium:impl/database/stored_items/create/initialise_slot with storage pandamium.db.stored_items:io selected.entry

# append entry
data modify storage pandamium.db.stored_items:data entries append from storage pandamium.db.stored_items:io selected.entry

# return
return run scoreboard players get <stored_item_id> variable
