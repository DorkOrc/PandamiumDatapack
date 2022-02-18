data modify storage pandamium:queue pointer set from storage pandamium:queue queue[0]
execute if data storage pandamium:queue pointer{action:"teleport_player"} run function pandamium:misc/queue/actions/teleport_player
execute if data storage pandamium:queue pointer{action:"finish_parkour"} run function pandamium:misc/queue/actions/finish_parkour

data remove storage pandamium:queue queue[0]
execute if data storage pandamium:queue queue[0] run function pandamium:misc/queue/iter
