execute unless block ~ ~ ~ #pandamium:raycast/ignore run function pandamium:impl/raycast/check_to_continue

execute if score <hit> variable matches 1 run function pandamium:impl/raycast/to_block/on_hit
execute if score <hit> variable matches 0 run scoreboard players remove <ttl> variable 1
execute if score <hit> variable matches 0 if score <ttl> variable matches 1.. positioned ^ ^ ^0.03125 run function pandamium:impl/raycast/to_block/loop
