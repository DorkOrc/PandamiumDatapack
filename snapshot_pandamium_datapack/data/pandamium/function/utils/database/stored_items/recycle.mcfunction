execute unless data storage pandamium.db.stored_items:io selected.entry run return run data remove storage pandamium.db.stored_items:io selected
execute unless data storage pandamium.db.stored_items:io selected.index run return run data remove storage pandamium.db.stored_items:io selected

data modify storage pandamium.db.stored_items:date reuse_slots append value {}
data modify storage pandamium.db.stored_items:date reuse_slots[-1].x set from storage pandamium.db.stored_items:io selected.entry.x
data modify storage pandamium.db.stored_items:date reuse_slots[-1].y set from storage pandamium.db.stored_items:io selected.entry.y
data modify storage pandamium.db.stored_items:date reuse_slots[-1].z set from storage pandamium.db.stored_items:io selected.entry.z
data modify storage pandamium.db.stored_items:date reuse_slots[-1].slot set from storage pandamium.db.stored_items:io selected.entry.slot

data modify storage pandamium:local functions."pandamium:utils/database/stored_items/recycle".selected_entry_index set from storage pandamium.db.stored_items:io selected.index
data modify storage pandamium:local functions."pandamium:utils/database/stored_items/recycle".selected_entry_id set from storage pandamium.db.stored_items:io selected.entry.stored_item_id
data modify storage pandamium:local functions."pandamium:utils/database/stored_items/recycle".top_entry_id set from storage pandamium.db.stored_items:data entries[-1].stored_item_id

function pandamium:impl/database/stored_items/delete/update_entries with storage pandamium:local functions."pandamium:utils/database/stored_items/recycle"
function pandamium:impl/database/stored_items/delete/remove_item with storage pandamium.db.stored_items:io selected.entry

data remove storage pandamium.db.stored_items:io selected
