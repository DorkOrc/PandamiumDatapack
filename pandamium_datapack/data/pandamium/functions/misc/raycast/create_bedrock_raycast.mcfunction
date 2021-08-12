kill @e[type=marker,tag=raycast.bedrock]

summon marker ~ ~ ~ {Tags:["raycast.bedrock"]}
execute at @s anchored eyes run tp @e[type=marker,tag=raycast.bedrock,limit=1] ^ ^ ^ ~ ~

scoreboard players set <raycast_iters> variable 0
scoreboard players set <in_bedrock> variable 0
execute as @e[type=marker,tag=raycast.bedrock,limit=1] at @s run function pandamium:misc/raycast/iter_bedrock_raycast
