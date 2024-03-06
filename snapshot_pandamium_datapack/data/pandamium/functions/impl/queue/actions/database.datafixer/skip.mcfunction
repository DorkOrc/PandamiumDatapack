# arguments: index

$tellraw @a ["skipped ",{"storage":"pandamium.db:mail","nbt":"selected.entry.mail_id"},"[$(index)]"]

$data remove storage pandamium.db:mail selected.entry.data.items[$(index)].id
$data remove storage pandamium.db:mail selected.entry.data.items[$(index)].Count
$data remove storage pandamium.db:mail selected.entry.data.items[$(index)].tag
$data modify storage pandamium.db:mail selected.entry.data.items[$(index)].taken set value 1b

execute store result storage pandamium:templace macro.index.index int 1 run scoreboard players add <queue.database.datafixer.index> variable 1
function pandamium:impl/queue/actions/database.datafixer/loop with storage pandamium:templace macro.index
