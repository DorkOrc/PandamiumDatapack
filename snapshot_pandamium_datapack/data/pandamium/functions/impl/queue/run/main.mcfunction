data modify storage pandamium:temp copy_of_queue set from storage pandamium:queue entries
data modify storage pandamium:queue entries set value []

scoreboard players set <queue.region_search> variable 0
execute if data storage pandamium:temp copy_of_queue[0] run function pandamium:impl/queue/run/loop
