execute unless data storage pandamium.db.stored_items:io selected.entry run return run data remove storage pandamium.db.stored_items:io selected
execute unless data storage pandamium.db.stored_items:io selected.index run return run data remove storage pandamium.db.stored_items:io selected

function pandamium:impl/database/stored_items/save/replace_from_selected with storage pandamium.db.stored_items:io selected

data remove storage pandamium.db.stored_items:io selected
