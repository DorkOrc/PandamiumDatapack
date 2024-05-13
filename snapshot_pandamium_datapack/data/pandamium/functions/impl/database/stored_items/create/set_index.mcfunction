# arguments: stored_item_id, index

$data modify storage pandamium.db.stored_items:data stored_item_id_indexes."$(stored_item)" set value $(index)
