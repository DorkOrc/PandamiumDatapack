function pandamium:misc/raycast/generic_raycast_to_block
# <hit> = 1: positioned in a block
# <hit> = 0: raycast got too far from eyes (unreliable position)

execute if score <hit> variable matches 1 positioned as @s if block ~ ~ ~ #pandamium:containers run scoreboard players set <raycast_hit_target> variable 1
