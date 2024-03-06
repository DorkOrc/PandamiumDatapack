# arguments: x, y, z, slot

execute unless data storage pandamium.db:stored_items selected run return fail

setblock 29999999 0 29999999 yellow_shulker_box
item replace block 29999999 0 29999999 container.0 with air
$item replace block 29999999 0 29999999 container.0 from block $(x) $(y) $(z) $(slot)

data remove storage pandamium.db:stored_items selected.entry.hover_event_root
data remove storage pandamium.db:stored_items selected.item
data modify storage pandamium.db:stored_items selected.item set from block 29999999 0 29999999 Items[{Slot:0b}]
data remove storage pandamium.db:stored_items selected.item.Slot

function pandamium:impl/database/stored_items/modify/set_item/copy_storage_to_db_slot with storage pandamium.db:stored_items selected.entry

return 1
