data remove storage pandamium.db.entities:io selected

execute unless entity @s[type=!player] run return 0

data modify storage pandamium.db.entities:io selected.entry.uuid set from entity @s UUID
execute store result storage pandamium.db.entities:data arguments.uuid0 int 1 run data get storage pandamium.db.entities:io selected.entry.uuid[0]
execute store result storage pandamium.db.entities:data arguments.uuid1 int 1 run data get storage pandamium.db.entities:io selected.entry.uuid[1]
execute store result storage pandamium.db.entities:data arguments.uuid2 int 1 run data get storage pandamium.db.entities:io selected.entry.uuid[2]
execute store result storage pandamium.db.entities:data arguments.uuid3 int 1 run data get storage pandamium.db.entities:io selected.entry.uuid[3]
function pandamium:impl/database/entities/load/get_index with storage pandamium.db.entities:data arguments

function pandamium:impl/database/entities/load/main with storage pandamium.db.entities:io selected

execute unless data storage pandamium.db.entities:io selected.entry run data remove storage pandamium.db.entities:io selected
