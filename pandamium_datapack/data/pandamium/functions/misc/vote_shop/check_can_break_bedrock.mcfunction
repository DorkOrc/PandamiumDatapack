execute if score @s in_spawn matches 1 run scoreboard players set <can_buy> variable 0

# Check if you're at the nether roof y-range
execute if score <can_buy> variable matches 1 at @s in the_nether store success score <near_nether_roof> variable if entity @p[tag=running_trigger,y=120,dy=16]
execute if score <can_buy> variable matches 1 if score <near_nether_roof> variable matches 0 run scoreboard players set <can_buy> variable 0

# Check if you're looking at bedrock
execute if score <can_buy> variable matches 1 run function pandamium:misc/raycast/create_bedrock_raycast
execute if score <can_buy> variable matches 1 if score <raycast_in_block> variable matches 0 run scoreboard players set <can_buy> variable 0

# Check if the bedrock you're looking at is in spawn
execute if score <can_buy> variable matches 1 in the_nether store success score <raycast_in_spawn> variable if entity @e[type=marker,tag=raycast.bedrock,limit=1,x=-512,y=0,z=-512,dx=1024,dy=256,dz=1024]
execute if score <can_buy> variable matches 1 if score <raycast_in_spawn> variable matches 1 run scoreboard players set <can_buy> variable 0
