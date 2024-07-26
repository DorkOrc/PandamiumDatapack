execute unless data storage pandamium.db.player_cache:io selected.id run return run data remove storage pandamium.db.player_cache:io selected
execute unless data storage pandamium.db.player_cache:io selected.entry run return run data remove storage pandamium.db.player_cache:io selected

function pandamium:impl/database/cache/save/replace_from_selected with storage pandamium.db.player_cache:io selected

data remove storage pandamium.db.player_cache:io selected
