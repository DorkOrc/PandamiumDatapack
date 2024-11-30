execute unless score @s online_ticks matches 0 run title @s actionbar {"text":"Respawn Point was Reverted","color":"red"}

# default to server spawn
execute if score @s spawnpoint_d matches 2 run return run function pandamium:detect/set_spawnpoint/revert_spawnpoint/default_to_server_spawn
execute unless score @s spawnpoint_x = @s spawnpoint_x run return run function pandamium:detect/set_spawnpoint/revert_spawnpoint/default_to_server_spawn
execute unless score @s spawnpoint_y = @s spawnpoint_y run return run function pandamium:detect/set_spawnpoint/revert_spawnpoint/default_to_server_spawn
execute unless score @s spawnpoint_z = @s spawnpoint_z run return run function pandamium:detect/set_spawnpoint/revert_spawnpoint/default_to_server_spawn
execute unless score @s spawnpoint_d = @s spawnpoint_d run return run function pandamium:detect/set_spawnpoint/revert_spawnpoint/default_to_server_spawn

# set to previous spawnpoint
execute store result storage pandamium:local functions."pandamium:detect/set_spawnpoint/*".spawnpoint_x int 1 run scoreboard players get @s spawnpoint_x
execute store result storage pandamium:local functions."pandamium:detect/set_spawnpoint/*".spawnpoint_y int 1 run scoreboard players get @s spawnpoint_y
execute store result storage pandamium:local functions."pandamium:detect/set_spawnpoint/*".spawnpoint_z int 1 run scoreboard players get @s spawnpoint_z

execute if score @s spawnpoint_d matches -1 run data modify storage pandamium:local functions."pandamium:detect/set_spawnpoint/*".spawnpoint_d set value "minecraft:the_nether"
execute if score @s spawnpoint_d matches 0 run data modify storage pandamium:local functions."pandamium:detect/set_spawnpoint/*".spawnpoint_d set value "minecraft:overworld"
execute if score @s spawnpoint_d matches 1 run data modify storage pandamium:local functions."pandamium:detect/set_spawnpoint/*".spawnpoint_d set value "minecraft:the_end"
execute if score @s spawnpoint_d matches 2 run data modify storage pandamium:local functions."pandamium:detect/set_spawnpoint/*".spawnpoint_d set value "pandamium:staff_world"

function pandamium:detect/set_spawnpoint/revert_spawnpoint/set with storage pandamium:local functions."pandamium:detect/set_spawnpoint/*"
