# arguments: rx, rz, d

$execute store result storage pandamium.db.regions:data region_indexes."$(rx)_$(rz)_$(d)" int 1 run data get storage pandamium.db.regions:data entries
$data modify storage pandamium.db.regions:data entries append value {region: [I; $(rx), $(rz), $(d)], chunks: [], chunk_indexes: {}}
