execute as @e[type=marker,tag=raycast.ray] run function pandamium:misc/raycast/kill_marker_vibration_fix
scoreboard players set <ttl> variable 160
scoreboard players set <raycast_hit_target> variable 0
execute store success score <raycast_obstructable> variable unless entity @s[gamemode=spectator]

scoreboard players set <hit> variable 0
execute at @s anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["raycast.ray"]}
