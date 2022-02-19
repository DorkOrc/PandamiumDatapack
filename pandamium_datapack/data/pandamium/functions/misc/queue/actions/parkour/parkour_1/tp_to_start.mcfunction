#{
#	pointer: {
#		action: "parkour/parkour_1/tp_to_start",
#		player: 2
#	}
#}

execute store result score <id> variable run data get storage pandamium:queue pointer.player
execute as @a if score @s id = <id> variable run function pandamium:misc/parkour/parkour_1/tp_to_start
