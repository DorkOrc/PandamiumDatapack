data remove storage pandamium:local functions."pandamium:detect/set_spawnpoint/*".respawn
data modify storage pandamium:local functions."pandamium:detect/set_spawnpoint/*".respawn set from entity @s respawn
execute unless data storage pandamium:local functions."pandamium:detect/set_spawnpoint/*".respawn run return fail

# prevent setting one's spawnpoint in the staff world
execute if data storage pandamium:local functions."pandamium:detect/set_spawnpoint/*".respawn{dimension:"pandamium:staff_world"} unless score @s id matches 532 run return run function pandamium:detect/set_spawnpoint/revert_spawnpoint/main

# save spawnpoint
execute store result score @s spawnpoint_x run data get storage pandamium:local functions."pandamium:detect/set_spawnpoint/*".respawn.pos[0]
execute store result score @s spawnpoint_y run data get storage pandamium:local functions."pandamium:detect/set_spawnpoint/*".respawn.pos[1]
execute store result score @s spawnpoint_z run data get storage pandamium:local functions."pandamium:detect/set_spawnpoint/*".respawn.pos[2]

scoreboard players set @s spawnpoint_d 0
execute if data storage pandamium:local functions."pandamium:detect/set_spawnpoint/*".respawn{dimension:"minecraft:the_nether"} run scoreboard players set @s spawnpoint_d -1
execute if data storage pandamium:local functions."pandamium:detect/set_spawnpoint/*".respawn{dimension:"minecraft:the_end"} run scoreboard players set @s spawnpoint_d 1
execute if data storage pandamium:local functions."pandamium:detect/set_spawnpoint/*".respawn{dimension:"pandamium:staff_world"} run scoreboard players set @s spawnpoint_d 2
