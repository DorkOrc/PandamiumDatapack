execute as @e[type=marker,tag=raycast.ray] run function pandamium:misc/raycast/kill_marker_vibration_fix
tag @e remove raycast.selected

scoreboard players set <ttl> variable 160
scoreboard players set <raycast_in_block> variable 0

summon marker ~ ~ ~ {Tags:["raycast.ray","raycast.armor_stand"]}
execute at @s anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=raycast.ray,limit=1,sort=nearest] run function pandamium:misc/raycast/armor_stand/at_ray
