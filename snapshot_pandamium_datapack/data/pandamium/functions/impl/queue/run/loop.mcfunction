function pandamium:impl/queue/run/iter

data remove storage pandamium:temp queue.copy[-1]
execute if data storage pandamium:temp queue.copy[-1] run function pandamium:impl/queue/loop
