execute unless data storage pandamium.db:entities selected.entry run return run data remove storage pandamium.db:entities selected
execute unless data storage pandamium.db:entities selected.index run return run data remove storage pandamium.db:entities selected

function pandamium:impl/database/entities/save/replace_from_selected with storage pandamium.db:entities selected

data remove storage pandamium.db:entities selected
