execute store result storage pandamium:local functions."pandamium:misc/teleport/to_scores/*".x int 1 run scoreboard players get <tp_x> variable 
execute store result storage pandamium:local functions."pandamium:misc/teleport/to_scores/*".y int 1 run scoreboard players get <tp_y> variable 
execute store result storage pandamium:local functions."pandamium:misc/teleport/to_scores/*".z int 1 run scoreboard players get <tp_z> variable 

execute if score <tp_d> variable matches 0 in minecraft:overworld run return run function pandamium:misc/teleport/to_scores/teleport with storage pandamium:local functions."pandamium:misc/teleport/to_scores/*"
execute if score <tp_d> variable matches -1 in minecraft:the_nether run return run function pandamium:misc/teleport/to_scores/teleport with storage pandamium:local functions."pandamium:misc/teleport/to_scores/*"
execute if score <tp_d> variable matches 1 in minecraft:the_end run return run function pandamium:misc/teleport/to_scores/teleport with storage pandamium:local functions."pandamium:misc/teleport/to_scores/*"
execute if score <tp_d> variable matches 2 in pandamium:staff_world run return run function pandamium:misc/teleport/to_scores/teleport with storage pandamium:local functions."pandamium:misc/teleport/to_scores/*"
return run function pandamium:misc/teleport/to_scores/teleport with storage pandamium:local functions."pandamium:misc/teleport/to_scores/*"
