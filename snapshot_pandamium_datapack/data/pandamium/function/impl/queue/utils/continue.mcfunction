execute store result score <queue.max> variable run data get storage pandamium:queue selected.entry.meta.max
execute if score <queue.max> variable matches ..0 store result storage pandamium:queue selected.entry.meta.max int 1 run scoreboard players set <queue.max> variable 1
execute store result score <queue.value> variable run data get storage pandamium:queue selected.entry.meta.value
execute if score <queue.value> variable matches ..-1 store result storage pandamium:queue selected.entry.meta.value int 1 run scoreboard players operation <queue.value> variable += <queue.max> variable
execute if score <queue.value> variable matches ..-1 store result storage pandamium:queue selected.entry.meta.value int 1 run scoreboard players set <queue.value> variable 0

execute unless score <queue.pending> variable matches 1 store result storage pandamium:queue selected.entry.wait int 1 run scoreboard players remove <queue.wait> variable 1
execute if data storage pandamium:queue selected.entry.meta.bossbar_id run function pandamium:impl/queue/run/update_bossbar with storage pandamium:queue selected.entry.meta
function pandamium:impl/queue/run/save_entry with storage pandamium:queue selected

scoreboard players set <queue.continued> variable 1
