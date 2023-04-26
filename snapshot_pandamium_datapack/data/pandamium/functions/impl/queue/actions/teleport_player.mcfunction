#{
#	action: "teleport_player",
#	destination: [I;INT,INT,INT,INT],
#	allow_parkour_teleport: BYTE,
#	player: INT
#}

execute store result score <tp_x> variable run data get storage pandamium:queue this.destination[0]
execute store result score <tp_y> variable run data get storage pandamium:queue this.destination[1]
execute store result score <tp_z> variable run data get storage pandamium:queue this.destination[2]
execute store result score <tp_d> variable run data get storage pandamium:queue this.destination[3]
execute store result score <id> variable run data get storage pandamium:queue this.player

execute if data storage pandamium:queue this{allow_parkour_teleport:1b} run scoreboard players set <parkour.allow_teleport> variable 1
execute as @a if score @s id = <id> variable run function pandamium:misc/teleport/to_scores
scoreboard players reset <parkour.allow_teleport> variable
