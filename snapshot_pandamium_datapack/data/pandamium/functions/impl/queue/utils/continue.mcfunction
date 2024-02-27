execute store result storage pandamium:queue selected.entry.wait int 1 run scoreboard players remove <queue.wait> variable 1
execute if data storage pandamium:queue selected.entry.meta.bossbar_id run function pandamium:impl/queue/run/update_bossbar with storage pandamium:queue selected.entry.meta
function pandamium:impl/queue/run/save_entry with storage pandamium:queue selected

scoreboard players set <queue.continued> variable 1
