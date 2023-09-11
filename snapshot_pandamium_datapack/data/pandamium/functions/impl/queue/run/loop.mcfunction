function pandamium:impl/queue/run/iter with storage pandamium:temp copy_of_queue[-1]

data remove storage pandamium:temp copy_of_queue[-1]
execute if data storage pandamium:temp copy_of_queue[-1] run function pandamium:impl/queue/run/loop
