# (score <tp_x> variable) (score <tp_y> variable) (score <tp_z> variable) (score <tp_d> variable) = <x> <y> <z> <dimension>

data remove storage pandamium:temp source

execute unless score <tp_d> variable matches -1..2 run tellraw @s [{"text":"[Teleport]","color":"dark_red"},{"text":" Invalid dimension!","color":"red"}]
execute unless score <tp_d> variable matches -1..2 run return 0

execute store result storage pandamium:templates macro.x__y__z.x int 1 run scoreboard players get <tp_x> variable
execute store result storage pandamium:templates macro.x__y__z.y int 1 run scoreboard players get <tp_y> variable
execute store result storage pandamium:templates macro.x__y__z.z int 1 run scoreboard players get <tp_z> variable

execute if score <tp_d> variable matches 0 in overworld run function pandamium:impl/teleport/dynamic/xyz with storage pandamium:templates macro.x__y__z
execute if score <tp_d> variable matches -1 in the_nether run function pandamium:impl/teleport/dynamic/xyz with storage pandamium:templates macro.x__y__z
execute if score <tp_d> variable matches 1 in the_end run function pandamium:impl/teleport/dynamic/xyz with storage pandamium:templates macro.x__y__z
execute if score <tp_d> variable matches 2 in pandamium:staff_world run function pandamium:impl/teleport/dynamic/xyz with storage pandamium:templates macro.x__y__z
