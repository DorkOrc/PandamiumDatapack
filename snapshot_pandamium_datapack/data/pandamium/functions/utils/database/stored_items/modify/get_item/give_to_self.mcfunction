# arguments: x, y, z, slot

execute unless data storage pandamium.db:stored_items selected run return fail

return run function pandamium:impl/database/stored_items/modify/get_item/give_to_self with storage pandamium.db:stored_items selected.entry
