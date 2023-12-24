# arguments: index

$data modify storage pandamium.db:regions selected.chunk.entry set from storage pandamium.db:regions selected.entry.chunks[$(index)]
