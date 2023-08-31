function pandamium:impl/queue/run/iter

data remove storage pandamium:temp copy_of_queue[-1]
execute if data storage pandamium:temp copy_of_queue[-1] run function pandamium:impl/queue/loop
