# arguments: source
# (score <tp_x> variable) (score <tp_y> variable) (score <tp_z> variable) (score <tp_d> variable) = <x> <y> <z> <dimension>

execute unless score <tp_d> variable matches -1..2 run return run tellraw @s [{"text":"[Teleport]","color":"dark_red"},{"text":" Invalid dimension!","color":"red"}]

$data modify storage pandamium:templates teleport.source set value "$(source)"

execute store result storage pandamium:templates macro.x__y__z.x int 1 run scoreboard players get <tp_x> variable
execute store result storage pandamium:templates macro.x__y__z.y int 1 run scoreboard players get <tp_y> variable
execute store result storage pandamium:templates macro.x__y__z.z int 1 run scoreboard players get <tp_z> variable

execute if score <tp_d> variable matches 0 in overworld run return run function pandamium:impl/teleport/dynamic/xyz_centred with storage pandamium:templates macro.x__y__z
execute if score <tp_d> variable matches -1 in the_nether run return run function pandamium:impl/teleport/dynamic/xyz_centred with storage pandamium:templates macro.x__y__z
execute if score <tp_d> variable matches 1 in the_end run return run function pandamium:impl/teleport/dynamic/xyz_centred with storage pandamium:templates macro.x__y__z
execute if score <tp_d> variable matches 2 in pandamium:staff_world run return run function pandamium:impl/teleport/dynamic/xyz_centred with storage pandamium:templates macro.x__y__z
