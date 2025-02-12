execute unless data storage pandamium.db.players:io selected.entry run return run data remove storage pandamium.db.players:io selected
execute unless data storage pandamium.db.players:io selected.index run return run data remove storage pandamium.db.players:io selected

function pandamium:impl/database/players/save/replace_from_selected with storage pandamium.db.players:io selected

data remove storage pandamium.db.players:io selected
