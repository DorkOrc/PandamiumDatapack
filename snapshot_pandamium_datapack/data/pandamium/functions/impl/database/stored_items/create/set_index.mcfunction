# arguments: stored_item_id, index

$data modify storage pandamium.db:stored_items stored_item_id_indexes."$(stored_item)" set value $(index)
