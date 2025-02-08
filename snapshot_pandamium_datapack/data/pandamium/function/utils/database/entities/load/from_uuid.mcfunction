# arguments: uuid

data remove storage pandamium.db.entities:io selected

$data modify storage pandamium.db.entities:io selected.uuid set value $(uuid)
execute store result storage pandamium.db.entities:io selected.uuid0 int 1 run data get storage pandamium.db.entities:io selected.uuid[0]
execute store result storage pandamium.db.entities:io selected.uuid1 int 1 run data get storage pandamium.db.entities:io selected.uuid[1]
execute store result storage pandamium.db.entities:io selected.uuid2 int 1 run data get storage pandamium.db.entities:io selected.uuid[2]
execute store result storage pandamium.db.entities:io selected.uuid3 int 1 run data get storage pandamium.db.entities:io selected.uuid[3]
scoreboard players set <create_if_unregistered> variable 0
function pandamium:impl/database/entities/load/get_index with storage pandamium.db.entities:io selected

function pandamium:impl/database/entities/load/main with storage pandamium.db.entities:io selected

execute unless data storage pandamium.db.entities:io selected.entry run return run data remove storage pandamium.db.entities:io selected

function pandamium:impl/database/entities/patch/main
