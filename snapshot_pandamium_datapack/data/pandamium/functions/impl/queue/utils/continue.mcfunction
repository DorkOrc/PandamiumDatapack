execute store result storage pandamium:queue selected.entry.wait int 1 run scoreboard players remove <queue.wait> variable 1
function pandamium:impl/queue/run/save_entry with storage pandamium:queue selected

scoreboard players set <queue.continued> variable 1
