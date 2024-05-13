# arguments: rx, rz, d

data remove storage pandamium.db.regions:io selected

$execute unless data storage pandamium.db.regions:data region_indexes."$(rx)_$(rz)_$(d)" run function pandamium:impl/database/regions/create/main {rx: $(rx), rz: $(rz), d: $(d)}
$execute store result storage pandamium.db.regions:io selected.index int 1 store result score <index> variable run data get storage pandamium.db.regions:data region_indexes."$(rx)_$(rz)_$(d)"
execute unless data storage pandamium.db.regions:io selected.index run return fail
function pandamium:impl/database/regions/load/main with storage pandamium.db.regions:io selected
execute unless data storage pandamium.db.regions:io selected.entry run data remove storage pandamium.db.regions:io selected

return run scoreboard players get <index> variable
