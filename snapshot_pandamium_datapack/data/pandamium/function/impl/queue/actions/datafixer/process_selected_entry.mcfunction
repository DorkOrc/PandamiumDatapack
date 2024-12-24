# arguments: stored_item_id, selected_entry_index, top_entry_id

function pandamium:impl/database/stored_items/delete/remove_item with storage pandamium.db.stored_items:io selected.entry
data remove storage pandamium.db.stored_items:io selected

$data modify storage pandamium.db.stored_items:data entries[$(selected_entry_index)] set from storage pandamium.db.stored_items:data entries[-1]
data remove storage pandamium.db.stored_items:data entries[-1]

$data modify storage pandamium.db.stored_items:data stored_item_id_indexes."$(top_entry_id)" set value $(selected_entry_index)
$data remove storage pandamium.db.stored_items:data stored_item_id_indexes."$(stored_item_id)"

$data remove storage pandamium.db.mail:data entries[].data.items[{stored_item_id:$(stored_item_id)}].stored_item_id
