# arguments: rx, rz, d

data remove storage pandamium.db:regions selected

$execute unless data storage pandamium.db:regions region_indexes."$(rx)_$(rz)_$(d)" run function pandamium:impl/database/regions/create/main {rx: $(rx), rz: $(rz), d: $(d)}
$execute store result storage pandamium.db:regions selected.index int 1 store result score <index> variable run data get storage pandamium.db:regions region_indexes."$(rx)_$(rz)_$(d)"
execute unless data storage pandamium.db:regions selected.index run return fail
function pandamium:impl/database/regions/load/main with storage pandamium.db:regions selected
execute unless data storage pandamium.db:regions selected.entry run data remove storage pandamium.db:regions selected

return run scoreboard players get <index> variable
