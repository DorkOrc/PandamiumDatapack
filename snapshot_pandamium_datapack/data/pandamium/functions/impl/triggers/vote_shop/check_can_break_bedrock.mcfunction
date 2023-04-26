# Check if you're looking at bedrock
function pandamium:misc/raycast/block/bedrock/main
execute if score <raycast_hit_target> variable matches 0 run scoreboard players set <can_buy> variable 0

# Check if the bedrock is not in spawn
execute if score <can_buy> variable matches 1 if score <raycast_in_spawn> variable matches 1 run scoreboard players set <can_buy> variable 0

# Check if the bedrock you is on a valid y level
scoreboard players set <bedrock_valid_pos> variable 0
execute if score <can_buy> variable matches 1 if predicate pandamium:in_dimension/the_nether if score <bedrock_y> variable matches 1.. run scoreboard players set <bedrock_valid_pos> variable 1
execute if score <can_buy> variable matches 1 if predicate pandamium:in_dimension/overworld if score <bedrock_y> variable matches -63.. run scoreboard players set <bedrock_valid_pos> variable 1
execute if score <can_buy> variable matches 1 if predicate pandamium:in_dimension/the_end if score <bedrock_y> variable matches 70.. run scoreboard players set <bedrock_valid_pos> variable 1
execute if score <can_buy> variable matches 1 if score <bedrock_valid_pos> variable matches 0 run scoreboard players set <can_buy> variable 0
