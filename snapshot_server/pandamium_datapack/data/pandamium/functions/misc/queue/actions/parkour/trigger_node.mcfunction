#{
#	action: "parkour/trigger_node",
#	player: 2,
#	NBT: {}
#}

data modify storage pandamium:temp NBT set from storage pandamium:queue pointer.NBT

execute store result score <id> variable run data get storage pandamium:queue pointer.player
execute as @a if score @s id = <id> variable at @s run function pandamium:misc/parkour/trigger_node
