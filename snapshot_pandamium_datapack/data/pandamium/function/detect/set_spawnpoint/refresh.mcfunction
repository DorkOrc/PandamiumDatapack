data remove storage pandamium:local functions."pandamium:detect/set_spawnpoint/*".respawn
data modify storage pandamium:local functions."pandamium:detect/set_spawnpoint/*".respawn set from entity @s respawn
execute unless data storage pandamium:local functions."pandamium:detect/set_spawnpoint/*".respawn run return fail

# prevent setting one's spawnpoint in non-gameplay dimensions
execute if data storage pandamium:local functions."pandamium:detect/set_spawnpoint/*".respawn{dimension:"pandamium:staff_world"} unless predicate pandamium:player/min_staff_perms/owner run return run function pandamium:detect/set_spawnpoint/revert_spawnpoint/main
execute if data storage pandamium:local functions."pandamium:detect/set_spawnpoint/*".respawn{dimension:"pandamium:sandbox"} unless predicate pandamium:player/min_staff_perms/owner run return run function pandamium:detect/set_spawnpoint/revert_spawnpoint/main
execute if data storage pandamium:local functions."pandamium:detect/set_spawnpoint/*".respawn{dimension:"pandamium:hub"} unless predicate pandamium:player/min_staff_perms/owner run return run function pandamium:detect/set_spawnpoint/revert_spawnpoint/main

# save spawnpoint
execute store result score @s spawnpoint_x run data get storage pandamium:local functions."pandamium:detect/set_spawnpoint/*".respawn.pos[0]
execute store result score @s spawnpoint_y run data get storage pandamium:local functions."pandamium:detect/set_spawnpoint/*".respawn.pos[1]
execute store result score @s spawnpoint_z run data get storage pandamium:local functions."pandamium:detect/set_spawnpoint/*".respawn.pos[2]

scoreboard players set @s spawnpoint_d 0
execute if data storage pandamium:local functions."pandamium:detect/set_spawnpoint/*".respawn{dimension:"minecraft:the_nether"} run scoreboard players set @s spawnpoint_d -1
execute if data storage pandamium:local functions."pandamium:detect/set_spawnpoint/*".respawn{dimension:"minecraft:the_end"} run scoreboard players set @s spawnpoint_d 1
execute if data storage pandamium:local functions."pandamium:detect/set_spawnpoint/*".respawn{dimension:"pandamium:staff_world"} run scoreboard players set @s spawnpoint_d 2
execute if data storage pandamium:local functions."pandamium:detect/set_spawnpoint/*".respawn{dimension:"pandamium:sandbox"} run scoreboard players set @s spawnpoint_d 3
execute if data storage pandamium:local functions."pandamium:detect/set_spawnpoint/*".respawn{dimension:"pandamium:hub"} run scoreboard players set @s spawnpoint_d 4
