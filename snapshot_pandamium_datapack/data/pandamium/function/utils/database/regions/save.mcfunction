execute unless data storage pandamium.db.regions:io selected.entry run return run data remove storage pandamium.db.regions:io selected
execute unless data storage pandamium.db.regions:io selected.index run return run data remove storage pandamium.db.regions:io selected
execute unless data storage pandamium.db.regions:io selected.entry.region run return run data remove storage pandamium.db.regions:io selected

# save the currently loaded chunk
execute if data storage pandamium.db.regions:io selected.chunk run function pandamium:utils/database/regions/save_chunk

# remove if empty
execute store result score <selected_region_entry_size> variable run data get storage pandamium.db.regions:io selected.entry
execute if score <selected_region_entry_size> variable matches 3 if data storage pandamium.db.regions:io selected.entry.region if data storage pandamium.db.regions:io selected.entry.chunks if data storage pandamium.db.regions:io selected.entry.chunk_indexes unless data storage pandamium.db.regions:io selected.entry.chunks[0] run return run function pandamium:impl/database/regions/save/prepare_removal

# otherwise, save
function pandamium:impl/database/regions/save/replace_from_selected with storage pandamium.db.regions:io selected
data remove storage pandamium.db.regions:io selected
