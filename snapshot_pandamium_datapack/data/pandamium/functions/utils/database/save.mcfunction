execute unless data storage pandamium.db:players selected.entry run return run data remove storage pandamium.db:players selected
execute unless data storage pandamium.db:players selected.index run return run data remove storage pandamium.db:players selected

execute store result storage pandamium:templates index.index int 1 run data get storage pandamium.db:players selected.index
function pandamium:impl/database/players/save/main with storage pandamium:templates index

data remove storage pandamium.db:players selected
