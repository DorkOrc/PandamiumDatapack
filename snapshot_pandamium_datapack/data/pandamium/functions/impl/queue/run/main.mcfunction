data modify storage pandamium:temp copy_of_queue set from storage pandamium:queue queue
data modify storage pandamium:queue queue set value []

execute if data storage pandamium:temp copy_of_queue[0] run function pandamium:impl/queue/run/loop
