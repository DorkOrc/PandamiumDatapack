execute unless data storage pandamium.db.regions:io selected.chunk.entry run return run data remove storage pandamium.db.regions:io selected.chunk
execute unless data storage pandamium.db.regions:io selected.chunk.index run return run data remove storage pandamium.db.regions:io selected.chunk
execute unless data storage pandamium.db.regions:io selected.entry run return run data remove storage pandamium.db.regions:io selected.chunk

# remove if empty
execute unless data storage pandamium.db.regions:io selected.chunk.entry.homes[0] run data remove storage pandamium.db.regions:io selected.chunk.entry.homes

execute store result score <selected_chunk_entry_size> variable run data get storage pandamium.db.regions:io selected.chunk.entry
execute if score <selected_chunk_entry_size> variable matches 1 if data storage pandamium.db.regions:io selected.chunk.entry.chunk run return run function pandamium:impl/database/regions/save_chunk/prepare_removal

# otherwise, save
execute store result storage pandamium:local functions."pandamium:utils/database/regions/save_chunk".index int 1 run data get storage pandamium.db.regions:io selected.chunk.index
function pandamium:impl/database/regions/save_chunk/replace_from_selected with storage pandamium:local functions."pandamium:utils/database/regions/save_chunk"
data remove storage pandamium.db.regions:io selected.chunk
