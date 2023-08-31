data modify storage pandamium:temp copy_of_queue set value []
data modify storage pandamium:temp copy_of_queue prepend from storage pandamium:queue queue[]
data modify storage pandamium:queue queue set value []

execute if data storage pandamium:temp copy_of_queue[-1] run function pandamium:impl/queue/run/loop
