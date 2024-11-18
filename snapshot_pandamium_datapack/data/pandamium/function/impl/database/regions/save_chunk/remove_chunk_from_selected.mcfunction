# arguments: target_chunk_index, target_chunk_x, target_chunk_z, last_chunk_index, last_chunk_x, last_chunk_z

$data modify storage pandamium.db.regions:io selected.entry.chunks[$(target_chunk_index)] set from storage pandamium.db.regions:io selected.entry.chunks[-1]
data remove storage pandamium.db.regions:io selected.entry.chunks[-1]

$data remove storage pandamium.db.regions:io selected.entry.chunk_indexes."$(target_chunk_x)_$(target_chunk_z)"
$data modify storage pandamium.db.regions:io selected.entry.chunk_indexes."$(last_chunk_x)_$(last_chunk_z)" set value $(target_chunk_index)
