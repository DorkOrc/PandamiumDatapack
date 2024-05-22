# arguments: $(x) $(y) $(z) $(slot)

$execute in pandamium:staff_world run item replace block $(x) $(y) $(z) container.$(slot) with air
$execute in pandamium:staff_world run data modify block $(x) $(y) $(z) Items[{Slot:$(slot)b}] merge from storage pandamium.db.stored_items:io selected.item
