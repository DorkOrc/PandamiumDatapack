execute as @e[type=marker,tag=raycast.ray] run function pandamium:misc/raycast/kill_marker_vibration_fix

summon marker ~ ~ ~ {Tags:["raycast.ray","raycast.bedrock"]}
execute at @s anchored eyes run tp @e[type=marker,tag=raycast.bedrock,limit=1,sort=nearest] ^ ^ ^ ~ ~

scoreboard players set <raycast_iters> variable 0
scoreboard players set <raycast_in_block> variable 0
execute as @e[type=marker,tag=raycast.bedrock,limit=1,sort=nearest] at @s run function pandamium:misc/raycast/bedrock/iter
