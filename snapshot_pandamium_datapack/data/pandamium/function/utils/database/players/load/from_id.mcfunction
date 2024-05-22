# arguments: id

data remove storage pandamium.db.players:io selected

$execute if data storage pandamium.db.players:data id_indexes."$(id)" store result storage pandamium:templates macro.index.index int 1 store result storage pandamium.db.players:io selected.index int 1 run data get storage pandamium.db.players:data id_indexes."$(id)"
execute if data storage pandamium.db.players:io selected.index run function pandamium:impl/database/players/load/main with storage pandamium:templates macro.index

execute unless data storage pandamium.db.players:io selected.entry run data remove storage pandamium.db.players:io selected
