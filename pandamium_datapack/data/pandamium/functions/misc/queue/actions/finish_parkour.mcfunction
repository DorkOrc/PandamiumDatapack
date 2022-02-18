#{
#	pointer: {
#		action: "finish_parkour",
#		player: 2
#	}
#}

execute store result score <id> variable run data get storage pandamium:queue pointer.player
execute as @a if score @s id = <id> variable run function pandamium:misc/parkour/actions/finish
