tag @s add raycast.ray

function pandamium:misc/raycast/generic_raycast_to_block
# <hit> variable = 1: positioned in a block
# <hit> variable = 0: raycast got too far from eyes (unreliable position)

execute if score <hit> variable matches 1 positioned as @s if block ~ ~ ~ bedrock run scoreboard players set <raycast_hit_target> variable 1

execute at @s store result score <bedrock_in_spawn> variable if predicate pandamium:in_spawn
execute store result score <bedrock_y> variable run data get entity @s Pos[1]
