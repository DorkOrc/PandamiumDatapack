function pandamium:impl/queue/run/iter with storage pandamium:temp copy_of_queue[0]

data remove storage pandamium:temp copy_of_queue[0]
execute if data storage pandamium:temp copy_of_queue[0] run function pandamium:impl/queue/run/loop
