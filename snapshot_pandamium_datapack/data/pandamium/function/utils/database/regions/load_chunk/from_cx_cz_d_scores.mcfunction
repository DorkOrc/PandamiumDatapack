# inputs:
# - score <cx> variable
# - score <cz> variable
# - score <d> variable

data modify storage pandamium:temp region set value [I;0,0,0]

execute store result storage pandamium:templates macro.cx__cz__rx__rz__d.cx int 1 run scoreboard players operation <utils.cx> variable = <cx> variable
execute store result storage pandamium:templates macro.cx__cz__rx__rz__d.cz int 1 run scoreboard players operation <utils.cz> variable = <cz> variable

execute store result storage pandamium:templates macro.cx__cz__rx__rz__d.rx int 1 store result storage pandamium:temp region[0] int 1 run scoreboard players operation <utils.cx> variable /= #32 constant
execute store result storage pandamium:templates macro.cx__cz__rx__rz__d.rz int 1 store result storage pandamium:temp region[1] int 1 run scoreboard players operation <utils.cz> variable /= #32 constant

execute store result storage pandamium:templates macro.cx__cz__rx__rz__d.d int 1 store result storage pandamium:temp region[2] int 1 run scoreboard players get <d> variable

# load region (unless already loaded)
execute store success score <load_region> variable unless data storage pandamium.db.regions:io selected.entry.region
execute if score <load_region> variable matches 0 store success score <load_region> variable run data modify storage pandamium:temp region set from storage pandamium.db.regions:io selected.entry.region
execute if score <load_region> variable matches 1 run function pandamium:utils/database/regions/load/from_rx_rz_d with storage pandamium:templates macro.cx__cz__rx__rz__d

# load chunk
function pandamium:impl/database/regions/load_chunk/with_cx_cz with storage pandamium:templates macro.cx__cz__rx__rz__d
execute unless data storage pandamium.db.regions:io selected.chunk.index run return fail
return run scoreboard players get <index> variable
