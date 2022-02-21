#{
#	action: "teleport_player",
#	destination: [I;0,0,0,0],
#	allow_parkour_teleport: 1b,
#	player: 2
#}

execute store result score <tp_x> variable run data get storage pandamium:queue pointer.destination[0]
execute store result score <tp_y> variable run data get storage pandamium:queue pointer.destination[1]
execute store result score <tp_z> variable run data get storage pandamium:queue pointer.destination[2]
execute store result score <tp_d> variable run data get storage pandamium:queue pointer.destination[3]
execute store result score <id> variable run data get storage pandamium:queue pointer.player

execute if data storage pandamium:queue pointer{allow_parkour_teleport:1b} run scoreboard players set <parkour.allow_teleport> variable 1
execute as @a if score @s id = <id> variable run function pandamium:misc/teleport/to_scores/main
scoreboard players reset <parkour.allow_teleport> variable
