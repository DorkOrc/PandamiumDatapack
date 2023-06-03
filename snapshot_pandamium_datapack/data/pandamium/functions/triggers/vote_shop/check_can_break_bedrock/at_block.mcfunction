# Check if block is bedrock
execute store success score <looking_at_bedrock> variable if block ~ ~ ~ bedrock
execute if score <looking_at_bedrock> variable matches 0 run scoreboard players set <can_buy> variable 0

# Check if the bedrock is not in spawn
execute store success score <bedrock_in_spawn> variable if predicate pandamium:in_spawn
execute if score <bedrock_in_spawn> variable matches 1 run scoreboard players set <can_buy> variable 0

# Check if the bedrock you is on a valid y level
scoreboard players set <bedrock_valid_pos> variable 0
execute store result score <bedrock_y> variable run data get entity @s Pos[1]
execute if dimension the_nether if score <bedrock_y> variable matches 1.. run scoreboard players set <bedrock_valid_pos> variable 1
execute if dimension overworld if score <bedrock_y> variable matches -63.. run scoreboard players set <bedrock_valid_pos> variable 1
execute if dimension the_end if score <bedrock_y> variable matches 70.. run scoreboard players set <bedrock_valid_pos> variable 1
execute if score <bedrock_valid_pos> variable matches 0 run scoreboard players set <can_buy> variable 0

execute if score <can_buy> variable matches 1 run setblock ~ ~ ~ air destroy
