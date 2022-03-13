scoreboard players add <raycast_iters> variable 1

execute store success score <raycast_in_block> variable if block ~ ~ ~ bedrock

execute if score <raycast_in_block> variable matches 0 if score <raycast_iters> variable matches ..160 run tp ^ ^ ^0.03125
execute if score <raycast_in_block> variable matches 0 if score <raycast_iters> variable matches ..160 at @s run function pandamium:misc/raycast/iter_bedrock_raycast
