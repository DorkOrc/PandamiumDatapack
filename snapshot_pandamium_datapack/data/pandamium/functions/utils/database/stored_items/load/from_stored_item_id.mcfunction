# arguments: stored_item_id

data remove storage pandamium.db.stored_items:io selected

$execute if data storage pandamium.db.stored_items:data stored_item_id_indexes."$(stored_item_id)" store result storage pandamium.db.stored_items:io selected.index int 1 store result score <index> variable run data get storage pandamium.db.stored_items:data stored_item_id_indexes."$(stored_item_id)"
execute unless data storage pandamium.db.stored_items:io selected.index run return fail
function pandamium:impl/database/stored_items/load/main with storage pandamium.db.stored_items:io selected
execute unless data storage pandamium.db.stored_items:io selected.entry run data remove storage pandamium.db.stored_items:io selected

return run scoreboard players get <index> variable
