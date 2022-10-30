execute at @s if predicate pandamium:in_spawn run scoreboard players set <can_buy> variable 0

# Check if you're at the nether roof y-range
execute if score <can_buy> variable matches 1 store success score <near_nether_roof> variable at @s in the_nether if entity @p[tag=running_trigger,y=120,dy=16]
execute if score <can_buy> variable matches 1 if score <near_nether_roof> variable matches 0 run scoreboard players set <can_buy> variable 0

# Check if you're looking at bedrock
execute if score <can_buy> variable matches 1 run function pandamium:misc/raycast/bedrock/main
execute if score <can_buy> variable matches 1 if score <raycast_in_block> variable matches 0 run scoreboard players set <can_buy> variable 0

# Check if the bedrock you're looking at is in spawn
execute if score <can_buy> variable matches 1 store success score <raycast_in_spawn> variable in the_nether if entity @e[type=marker,tag=raycast.bedrock,limit=1,x=0,predicate=pandamium:in_spawn]
execute if score <can_buy> variable matches 1 if score <raycast_in_spawn> variable matches 1 run scoreboard players set <can_buy> variable 0
