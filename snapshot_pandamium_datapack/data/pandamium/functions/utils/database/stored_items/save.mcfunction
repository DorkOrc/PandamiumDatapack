execute unless data storage pandamium.db:stored_items selected.entry run return run data remove storage pandamium.db:stored_items selected
execute unless data storage pandamium.db:stored_items selected.index run return run data remove storage pandamium.db:stored_items selected

function pandamium:impl/database/stored_items/save/replace_from_selected with storage pandamium.db:stored_items selected

data remove storage pandamium.db:stored_items selected
