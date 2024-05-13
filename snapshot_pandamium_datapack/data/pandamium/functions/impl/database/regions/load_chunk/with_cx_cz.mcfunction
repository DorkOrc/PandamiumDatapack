# arguments: cx, cz

data remove storage pandamium.db.regions:io selected.chunk

$execute unless data storage pandamium.db.regions:io selected.entry.chunk_indexes."$(cx)_$(cz)" run function pandamium:impl/database/regions/create_chunk/main {cx: $(cx), cz: $(cz)}
$execute store result storage pandamium.db.regions:io selected.chunk.index int 1 store result score <index> variable run data get storage pandamium.db.regions:io selected.entry.chunk_indexes."$(cx)_$(cz)"
execute unless data storage pandamium.db.regions:io selected.chunk.index run return fail
function pandamium:impl/database/regions/load_chunk/with_index with storage pandamium.db.regions:io selected.chunk
execute unless data storage pandamium.db.regions:io selected.chunk.entry run data remove storage pandamium.db.regions:io selected.chunk
