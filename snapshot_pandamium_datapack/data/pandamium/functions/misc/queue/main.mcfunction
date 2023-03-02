data modify storage pandamium:temp queue.copy set value []
data modify storage pandamium:temp queue.copy prepend from storage pandamium:queue queue[]
data modify storage pandamium:queue queue set value []

execute if data storage pandamium:temp queue.copy[0] run function pandamium:misc/queue/iter
