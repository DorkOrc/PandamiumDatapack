data modify storage pandamium:temp region set value [I;0,0,0]

function pandamium:utils/get/position
execute store result storage pandamium:templates macro.cx__cz__rx__rz__d.cx int 1 run scoreboard players operation <x> variable /= #16 constant
execute store result storage pandamium:templates macro.cx__cz__rx__rz__d.cz int 1 run scoreboard players operation <z> variable /= #16 constant
execute store result storage pandamium:templates macro.cx__cz__rx__rz__d.rx int 1 store result storage pandamium:temp region[0] int 1 run scoreboard players operation <x> variable /= #32 constant
execute store result storage pandamium:templates macro.cx__cz__rx__rz__d.rz int 1 store result storage pandamium:temp region[1] int 1 run scoreboard players operation <z> variable /= #32 constant
execute store result storage pandamium:templates macro.cx__cz__rx__rz__d.d int 1 store result storage pandamium:temp region[2] int 1 run function pandamium:utils/get/dimension_id

# load region (unless already loaded)
execute store success score <different> variable run data modify storage pandamium:temp region set from storage pandamium.db:regions selected.entry.region
execute if score <different> variable matches 1 run function pandamium:utils/database/regions/load_chunk/from_rx_rz_d with storage pandamium:templates macro.cx__cz__rx__rz__d

# load chunk
function pandamium:impl/database/regions/load_chunk/with_cx_cz with storage pandamium:templates macro.cx__cz__rx__rz__d
execute unless data storage pandamium.db:regions selected.chunk.index run return fail
return run scoreboard players get <index> variable
