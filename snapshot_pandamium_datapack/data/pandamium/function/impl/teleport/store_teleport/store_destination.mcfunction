function pandamium:utils/get/position
execute store result storage pandamium:templates teleport.to[0] int 1 run scoreboard players get <x> variable
execute store result storage pandamium:templates teleport.to[1] int 1 run scoreboard players get <y> variable
execute store result storage pandamium:templates teleport.to[2] int 1 run scoreboard players get <z> variable
execute store result storage pandamium:templates teleport.to[3] int 1 run function pandamium:utils/get/dimension_id
