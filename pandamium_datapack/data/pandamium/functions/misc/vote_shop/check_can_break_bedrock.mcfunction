# check if you're at the nether roof y-range
execute at @s in the_nether unless entity @p[tag=running_trigger,y=120,dy=16] run scoreboard players set <can_buy> variable 0

# check if you're looking at bedrock
function pandamium:misc/raycast/create_bedrock_raycast
execute if score <raycast_in_block> variable matches 0 run scoreboard players set <can_buy> variable 0

# check if the bedrock you're looking at is in spawn
execute in the_nether store success score <looking_into_spawn> variable if entity @e[type=marker,tag=raycast.bedrock,limit=1,x=-512,y=0,z=-512,dx=1024,dy=256,dz=1024] run scoreboard players set <can_buy> variable 0
