#{
#	action: "parkour/trigger_node",
#	player: 2,
#	node: {}
#}

data modify storage pandamium:temp parkour.node set from storage pandamium:queue this.node

execute store result score <id> variable run data get storage pandamium:queue this.player
execute as @a if score @s id = <id> variable at @s run function pandamium:misc/parkour/trigger_node
