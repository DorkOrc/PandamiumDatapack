execute store result storage pandamium:local functions."pandamium:utils/database/regions/save_chunk".target_chunk_index int 1 run data get storage pandamium.db.regions:io selected.chunk.index
data modify storage pandamium:local functions."pandamium:utils/database/regions/save_chunk".target_chunk_x set from storage pandamium.db.regions:io selected.chunk.entry.chunk[0]
data modify storage pandamium:local functions."pandamium:utils/database/regions/save_chunk".target_chunk_z set from storage pandamium.db.regions:io selected.chunk.entry.chunk[1]

execute store result score <selected_region_last_chunk_entry_index> variable if data storage pandamium.db.regions:io selected.entry.chunks[]
execute store result storage pandamium:local functions."pandamium:utils/database/regions/save_chunk".last_chunk_index int 1 run scoreboard players remove <selected_region_last_chunk_entry_index> variable 1

data modify storage pandamium:local functions."pandamium:utils/database/regions/save_chunk".last_chunk_x set from storage pandamium.db.regions:io selected.entry.chunks[-1].chunk[0]
data modify storage pandamium:local functions."pandamium:utils/database/regions/save_chunk".last_chunk_z set from storage pandamium.db.regions:io selected.entry.chunks[-1].chunk[1]

function pandamium:impl/database/regions/save_chunk/remove_chunk_from_selected with storage pandamium:local functions."pandamium:utils/database/regions/save_chunk"

data remove storage pandamium.db.regions:io selected.chunk
