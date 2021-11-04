execute if score @s parkour_checkpoint matches 0.. run scoreboard players operation <next_checkpoint> variable = @s parkour_checkpoint
scoreboard players add <next_checkpoint> variable 1

scoreboard players reset <checkpoint_id> variable
scoreboard players operation <checkpoint_id> variable = @e[type=marker,tag=parkour.checkpoint,distance=..1,limit=1] id
execute store success score <parkour_finish> variable if data entity @e[type=marker,tag=parkour.checkpoint,distance=..1,limit=1] data{ParkourFinish:1b}

execute if score @s parkour_checkpoint matches 0.. if score <parkour_finish> variable matches 0 if score <checkpoint_id> variable matches 1.. if score <checkpoint_id> variable = <next_checkpoint> variable run function pandamium:misc/map_specific/parkour/new_checkpoint
execute if score @s parkour_checkpoint matches 0.. if score <parkour_finish> variable matches 1 if score <checkpoint_id> variable matches 1.. if score <checkpoint_id> variable = <next_checkpoint> variable run function pandamium:misc/map_specific/parkour/finish_parkour
execute unless score @s parkour_checkpoint matches 0.. if score <checkpoint_id> variable matches 0 run function pandamium:misc/map_specific/parkour/start_parkour

advancement revoke @s only pandamium:parkour/checkpoint_pressure_plate
