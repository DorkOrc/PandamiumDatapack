data remove storage pandamium.db.mail:data entries[].data.items[].stored_item_id

data remove storage pandamium.db.stored_items:io selected

data modify storage pandamium.db.stored_items:data entries set value []
data modify storage pandamium.db.stored_items:data stored_item_id_indexes set value {}
data remove storage pandamium.db.stored_items:data last_stored_item_id

function pandamium:impl/database/stored_items/create/set_empty_database_values
