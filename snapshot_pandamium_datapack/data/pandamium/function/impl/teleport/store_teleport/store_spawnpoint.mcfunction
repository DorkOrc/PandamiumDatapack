execute unless score @s spawnpoint_x = @s spawnpoint_x run return run data modify storage pandamium:templates teleport.to[] set value 0

execute store result storage pandamium:templates teleport.to[0] int 1 run scoreboard players get @s spawnpoint_x
execute store result storage pandamium:templates teleport.to[1] int 1 run scoreboard players get @s spawnpoint_y
execute store result storage pandamium:templates teleport.to[2] int 1 run scoreboard players get @s spawnpoint_z
execute store result storage pandamium:templates teleport.to[3] int 1 run scoreboard players get @s spawnpoint_d
