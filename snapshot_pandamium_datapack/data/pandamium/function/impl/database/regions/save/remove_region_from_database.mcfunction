# arguments: target_region_index, target_region_x, target_region_z, target_region_d, last_region_index, last_region_x, last_region_z, last_region_d

$data modify storage pandamium.db.regions:data entries[$(target_region_index)] set from storage pandamium.db.regions:data entries[-1]
data remove storage pandamium.db.regions:data entries[-1]

$data modify storage pandamium.db.regions:data region_indexes."$(last_region_x)_$(last_region_z)_$(last_region_d)" set value $(target_region_index)
$data remove storage pandamium.db.regions:data region_indexes."$(target_region_x)_$(target_region_z)_$(target_region_d)"
