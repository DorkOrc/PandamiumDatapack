tag @s add raycast.ray

function pandamium:misc/raycast/generic_raycast_to_block
# <hit> variable = 1: positioned in a block
# <hit> variable = 0: raycast got too far from eyes (unreliable position)

execute if score <hit> variable matches 1 positioned as @s if block ~ ~ ~ #all_signs run scoreboard players set <raycast_hit_target> variable 1
