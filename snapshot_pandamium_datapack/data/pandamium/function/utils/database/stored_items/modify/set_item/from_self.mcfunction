# arguments: slot

execute unless data storage pandamium.db.stored_items:io selected run return fail

setblock 29999999 0 29999999 yellow_shulker_box{lock:{count:{max:-1}}}
item replace block 29999999 0 29999999 container.0 with air
$item replace block 29999999 0 29999999 container.0 from entity @s $(slot)

data remove storage pandamium.db.stored_items:io selected.entry.hover_event_root
data remove storage pandamium.db.stored_items:io selected.item
data modify storage pandamium.db.stored_items:io selected.item set from block 29999999 0 29999999 Items[0]
data remove storage pandamium.db.stored_items:io selected.item.Slot

function pandamium:impl/database/stored_items/modify/set_item/copy_storage_to_db_slot with storage pandamium.db.stored_items:io selected.entry

return 1
