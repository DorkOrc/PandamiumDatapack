execute as @e[type=marker,tag=raycast.ray] run function pandamium:misc/raycast/kill_marker_vibration_fix

scoreboard players set <ttl> variable 160
scoreboard players set <raycast_in_block> variable 0
execute store success score <raycast_obstructable> variable unless entity @s[gamemode=spectator]

summon marker ~ ~ ~ {Tags:["raycast.ray","raycast.bedrock"]}
execute at @s anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=raycast.ray,limit=1,sort=nearest] run function pandamium:misc/raycast/bedrock/at_ray
