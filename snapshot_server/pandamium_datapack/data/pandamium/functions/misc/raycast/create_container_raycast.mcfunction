kill @e[type=marker,tag=raycast.container]

summon marker ~ ~ ~ {Tags:["raycast.container"]}
execute at @s anchored eyes run tp @e[type=marker,tag=raycast.container,limit=1] ^ ^ ^ ~ ~

scoreboard players set <raycast_iters> variable 0
scoreboard players set <raycast_in_block> variable 0
execute as @e[type=marker,tag=raycast.container,limit=1] at @s run function pandamium:misc/raycast/iter_container_raycast
