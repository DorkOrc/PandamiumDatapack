# (score <tp_x> variable) (score <tp_y> variable) (score <tp_z> variable) (score <tp_d> variable) = <x> <y> <z> <dimension>

execute unless score <tp_d> variable matches -1..2 run return run tellraw @s [{"text":"[Teleport]","color":"dark_red"},{"text":" Invalid dimension!","color":"red"}]

data modify storage pandamium:teleport arguments set value {x: 0, y: 0, z: 0}
execute store result storage pandamium:teleport arguments.x int 1 run scoreboard players get <tp_x> variable
execute store result storage pandamium:teleport arguments.y int 1 run scoreboard players get <tp_y> variable
execute store result storage pandamium:teleport arguments.z int 1 run scoreboard players get <tp_z> variable

execute if score <tp_d> variable matches 0 in overworld run function pandamium:impl/teleport/dynamic/xyz with storage pandamium:teleport arguments
execute if score <tp_d> variable matches -1 in the_nether run function pandamium:impl/teleport/dynamic/xyz with storage pandamium:teleport arguments
execute if score <tp_d> variable matches 1 in the_end run function pandamium:impl/teleport/dynamic/xyz with storage pandamium:teleport arguments
execute if score <tp_d> variable matches 2 in pandamium:staff_world run function pandamium:impl/teleport/dynamic/xyz with storage pandamium:teleport arguments
