# arguments: cx, cz

$data modify storage pandamium.db.regions:io selected.chunk.entry set value {chunk: [I; $(cx), $(cz)]}

$execute store result storage pandamium.db.regions:io selected.chunk.index int 1 store result storage pandamium.db.regions:io selected.entry.chunk_indexes."$(cx)_$(cz)" int 1 run data get storage pandamium.db.regions:io selected.entry.chunks
data modify storage pandamium.db.regions:io selected.entry.chunks append from storage pandamium.db.regions:io selected.chunk.entry
