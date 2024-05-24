# arguments: index

$execute unless data storage pandamium:queue entries[$(index)] run return 0

scoreboard players set <queue.continued> variable 0
$data modify storage pandamium:queue selected.entry set from storage pandamium:queue entries[$(index)]
function pandamium:impl/queue/run/do_action with storage pandamium:queue selected.entry
execute if score <queue.continued> variable matches 0 if data storage pandamium:queue selected.entry.meta.bossbar_id run function pandamium:impl/queue/run/remove_bossbar with storage pandamium:queue selected.entry.meta
$execute if score <queue.continued> variable matches 0 run data remove storage pandamium:queue entries[$(index)]

execute if score <queue.continued> variable matches 1 store result storage pandamium:queue selected.index int 1 run scoreboard players add <index> variable 1
function pandamium:impl/queue/run/loop with storage pandamium:queue selected
