function pandamium:utils/get/position
execute store result storage pandamium:templates macro.rx__rz__d.rx int 1 run scoreboard players operation <x> variable /= #512 constant
execute store result storage pandamium:templates macro.rx__rz__d.rz int 1 run scoreboard players operation <z> variable /= #512 constant
execute store result storage pandamium:templates macro.rx__rz__d.d int 1 run function pandamium:utils/get/dimension_id

function pandamium:utils/database/regions/load/from_rx_rz_d with storage pandamium:templates macro.rx__rz__d
