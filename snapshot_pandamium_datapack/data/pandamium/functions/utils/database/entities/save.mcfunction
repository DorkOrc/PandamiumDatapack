execute unless data storage pandamium.db.entities:io selected.entry run return run data remove storage pandamium.db.entities:io selected
execute unless data storage pandamium.db.entities:io selected.index run return run data remove storage pandamium.db.entities:io selected

function pandamium:impl/database/entities/save/replace_from_selected with storage pandamium.db.entities:io selected

data remove storage pandamium.db.entities:io selected
