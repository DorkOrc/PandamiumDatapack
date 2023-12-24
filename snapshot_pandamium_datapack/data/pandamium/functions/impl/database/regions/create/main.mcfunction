# arguments: rx, rz, d

$data modify storage pandamium.db:regions selected.entry set value {region: [I; $(rx), $(rz), $(d)], chunks: [], chunk_indexes: {}}

$execute store result storage pandamium.db:regions selected.index int 1 store result storage pandamium.db:regions region_indexes."$(rx)_$(rz)_$(d)" int 1 run data get storage pandamium.db:regions entries
data modify storage pandamium.db:regions entries append from storage pandamium.db:regions selected.entry
