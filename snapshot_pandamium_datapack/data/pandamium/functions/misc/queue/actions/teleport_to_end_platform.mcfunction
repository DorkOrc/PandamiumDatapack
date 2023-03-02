#{
#	action: "teleport_to_end_platform",
#	player: INT
#}

execute in the_end unless loaded 100 48 0 run scoreboard players set <wait> variable 1

execute if score <wait> variable matches 0 in the_end run setblock 100 48 0 bedrock
execute if score <wait> variable matches 0 in the_end run fill 98 49 -2 102 51 2 moving_piston
execute if score <wait> variable matches 0 if data storage pandamium:queue this.player store result score <id> variable run data get storage pandamium:queue this.player
execute if score <wait> variable matches 0 if data storage pandamium:queue this.player as @a if score @s id = <id> variable in the_end run tp @s 100 49 0
