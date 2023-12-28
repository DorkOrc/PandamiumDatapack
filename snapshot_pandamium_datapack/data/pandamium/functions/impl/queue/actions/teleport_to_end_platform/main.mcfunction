#{
#	action: "teleport_to_end_platform",
#	player: INT
#}

execute if score <wait> variable matches ..-20 run return run tellraw @a {"text":"Gave up trying to teleport player to end platform after 20 failed attempts.","color":"red"}

execute in the_end unless loaded 100 48 0 run return run function pandamium:impl/queue/utils/continue

function pandamium:impl/generate_end_platform with storage pandamium:global end_platform_position

execute unless data storage pandamium:queue selected.entry.player run return 0
execute store result score <id> variable run data get storage pandamium:queue selected.entry.player
execute as @a[predicate=pandamium:matches_id,limit=1] in the_end rotated as @s run function pandamium:impl/teleport/dynamic/xyz with storage pandamium:global end_platform_position
execute as @a[predicate=pandamium:matches_id,limit=1] at @s run tp ~ ~1 ~
