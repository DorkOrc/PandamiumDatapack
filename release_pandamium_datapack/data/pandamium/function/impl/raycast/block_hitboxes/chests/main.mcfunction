execute if block ~ ~ ~ #pandamium:chests[type=right] run function pandamium:impl/raycast/block_hitboxes/chests/right
execute if score <hit> variable matches 0 if block ~ ~ ~ #pandamium:chests[type=left] run function pandamium:impl/raycast/block_hitboxes/chests/left
execute if score <hit> variable matches 0 align xyz positioned ~0.0625 ~ ~0.0625 if entity @s[dx=0] align xyz positioned ~-0.0625 ~-0.125 ~-0.0625 if entity @s[dx=0] run scoreboard players set <hit> variable 1
