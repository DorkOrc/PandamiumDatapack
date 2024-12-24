# arguments: selected_entry_index, selected_entry_id, top_entry_id

$data modify storage pandamium.db.stored_items:data entries[$(selected_entry_index)] set from storage pandamium.db.stored_items:data entries[-1]
data remove storage pandamium.db.stored_items:data entries[-1]

$data modify storage pandamium.db.stored_items:data stored_item_id_indexes."$(top_entry_id)" set value $(selected_entry_index)
$data remove storage pandamium.db.stored_items:data stored_item_id_indexes."$(selected_entry_id)"
