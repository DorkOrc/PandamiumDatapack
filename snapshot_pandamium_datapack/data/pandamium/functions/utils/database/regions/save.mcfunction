execute unless data storage pandamium.db:regions selected.entry run return run data remove storage pandamium.db:regions selected
execute unless data storage pandamium.db:regions selected.index run return run data remove storage pandamium.db:regions selected

execute if data storage pandamium.db:regions selected.chunk run function pandamium:utils/database/regions/save_chunk

execute store result storage pandamium:templates macro.index.index int 1 run data get storage pandamium.db:regions selected.index
function pandamium:impl/database/regions/save/replace_from_selected with storage pandamium:templates macro.index

data remove storage pandamium.db:regions selected
