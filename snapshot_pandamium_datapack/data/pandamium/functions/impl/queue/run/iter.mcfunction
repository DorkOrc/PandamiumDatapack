data modify storage pandamium:queue this set from storage pandamium:temp queue.copy[-1]

execute store result score <wait> variable run data get storage pandamium:queue this.wait
execute if score <wait> variable matches 1.. run function pandamium:impl/queue/run/recycle
execute if score <wait> variable matches 1.. run return 0

execute if data storage pandamium:queue this{action:"teleport_player"} run function pandamium:impl/queue/actions/teleport_player
execute if data storage pandamium:queue this{action:"parkour/trigger_node"} run function pandamium:impl/queue/actions/parkour/trigger_node
execute if data storage pandamium:queue this{action:"teleport_to_end_platform"} run function pandamium:impl/queue/actions/teleport_to_end_platform
