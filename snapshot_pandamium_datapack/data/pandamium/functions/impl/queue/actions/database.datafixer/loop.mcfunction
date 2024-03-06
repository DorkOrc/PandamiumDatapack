# arguments: index

# end loop
$execute unless data storage pandamium.db:mail selected.entry.data.items[$(index)] run return 0

# skip
$execute unless data storage pandamium.db:mail selected.entry.data.items[$(index)].id run return run function pandamium:impl/queue/actions/database.datafixer/skip with storage pandamium:templace macro.index
$execute unless data storage pandamium.db:mail selected.entry.data.items[$(index)].Count run return run function pandamium:impl/queue/actions/database.datafixer/skip with storage pandamium:templace macro.index

# migrate item data to [stored_items] database
$execute store result storage pandamium.db:mail selected.entry.data.items[$(index)].stored_item_id int 1 run function pandamium:utils/database/stored_items/load_new
execute in pandamium:staff_world run item replace block 5 0 0 container.0 with air
$execute in pandamium:staff_world run data modify block 5 0 0 item set from storage pandamium.db:mail selected.entry.data.items[$(index)]
execute in pandamium:staff_world run function pandamium:utils/database/stored_items/modify/set_item/from_block {x:5,y:0,z:0,slot:"container.0"}
function pandamium:utils/database/stored_items/save

$data remove storage pandamium.db:mail selected.entry.data.items[$(index)].id
$data remove storage pandamium.db:mail selected.entry.data.items[$(index)].Count
$data remove storage pandamium.db:mail selected.entry.data.items[$(index)].tag

# next
execute store result storage pandamium:templace macro.index.index int 1 run scoreboard players add <queue.database.datafixer.index> variable 1
function pandamium:impl/queue/actions/database.datafixer/loop with storage pandamium:templace macro.index
