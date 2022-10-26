data modify storage pandamium:queue this set from storage pandamium:queue queue[0]
execute if data storage pandamium:queue this{action:"teleport_player"} run function pandamium:misc/queue/actions/teleport_player
execute if data storage pandamium:queue this{action:"parkour/trigger_node"} run function pandamium:misc/queue/actions/parkour/trigger_node

data remove storage pandamium:queue queue[0]
execute if data storage pandamium:queue queue[0] run function pandamium:misc/queue/iter
