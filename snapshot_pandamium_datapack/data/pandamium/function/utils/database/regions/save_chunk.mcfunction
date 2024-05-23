execute unless data storage pandamium.db.regions:io selected.chunk.entry run return run data remove storage pandamium.db.regions:io selected.chunk
execute unless data storage pandamium.db.regions:io selected.chunk.index run return run data remove storage pandamium.db.regions:io selected.chunk
execute unless data storage pandamium.db.regions:io selected.entry run return run data remove storage pandamium.db.regions:io selected.chunk

execute store result storage pandamium:templates macro.index.index int 1 run data get storage pandamium.db.regions:io selected.chunk.index
function pandamium:impl/database/regions/save_chunk/replace_from_selected with storage pandamium:templates macro.index

data remove storage pandamium.db.regions:io selected.chunk
