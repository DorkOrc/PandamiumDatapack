scoreboard players add <raycast_iters> variable 1

execute if block ~ ~ ~ bedrock run scoreboard players set <raycast_in_block> variable 1

execute unless block ~ ~ ~ #pandamium:raycast_continue run scoreboard players set <raycast_iters> variable 161
execute if score <raycast_in_block> variable matches 0 if score <raycast_iters> variable matches ..160 run tp ^ ^ ^0.03125
execute if score <raycast_in_block> variable matches 0 if score <raycast_iters> variable matches ..160 at @s if block ~ ~ ~ #pandamium:raycast_continue/bedrock run function pandamium:misc/raycast/bedrock/iter
