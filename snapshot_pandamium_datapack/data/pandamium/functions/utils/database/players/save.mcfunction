execute unless data storage pandamium.db:players selected.entry run data remove storage pandamium.db:players selected
execute unless data storage pandamium.db:players selected.entry run return 0
execute unless data storage pandamium.db:players selected.index run data remove storage pandamium.db:players selected
execute unless data storage pandamium.db:players selected.index run return 0

execute store result storage pandamium:templates index.index int 1 run data get storage pandamium.db:players selected.index
function pandamium:impl/database/players/save/main with storage pandamium:templates index

data remove storage pandamium.db:players selected
