data modify storage pandamium:queue carry set value []
execute if data storage pandamium:queue queue[0] run function pandamium:misc/queue/iter
execute if data storage pandamium:queue carry[0] run data modify storage pandamium:queue queue append from storage pandamium:queue carry[]
execute if data storage pandamium:queue carry[0] run data modify storage pandamium:queue carry set value []
