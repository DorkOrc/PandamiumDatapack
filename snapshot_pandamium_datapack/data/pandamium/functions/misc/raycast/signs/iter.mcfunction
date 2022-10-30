scoreboard players add <raycast_iters> variable 1

execute if block ~ ~ ~ #pandamium:all_signs run function pandamium:misc/raycast/signs/check_hitbox

execute unless block ~ ~ ~ #pandamium:raycast_continue unless block ~ ~ ~ #pandamium:all_signs run scoreboard players set <raycast_iters> variable 161
execute if score <raycast_in_block> variable matches 0 if score <raycast_iters> variable matches ..160 run tp ^ ^ ^0.03125
execute if score <raycast_in_block> variable matches 0 if score <raycast_iters> variable matches ..160 at @s run function pandamium:misc/raycast/signs/iter
