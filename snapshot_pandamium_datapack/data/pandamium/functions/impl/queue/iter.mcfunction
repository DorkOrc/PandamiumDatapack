data modify storage pandamium:queue this set from storage pandamium:temp queue.copy[-1]

execute store result score <wait> variable run data get storage pandamium:queue this.wait
execute unless score <wait> variable matches 1.. run function pandamium:impl/queue/run
execute if score <wait> variable matches 1.. run function pandamium:impl/queue/recycle

data remove storage pandamium:temp queue.copy[-1]
execute if data storage pandamium:temp queue.copy[-1] run function pandamium:impl/queue/iter
