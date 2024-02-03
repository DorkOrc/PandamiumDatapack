execute unless data storage pandamium.db.players:io selected.entry run return run data remove storage pandamium.db.players:io selected
execute unless data storage pandamium.db.players:io selected.index run return run data remove storage pandamium.db.players:io selected

execute store result storage pandamium:templates index.index int 1 run data get storage pandamium.db.players:io selected.index
function pandamium:impl/database/players/save/replace_from_selected with storage pandamium:templates index

data remove storage pandamium.db.players:io selected
