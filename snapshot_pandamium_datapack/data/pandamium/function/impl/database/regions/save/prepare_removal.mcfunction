execute store result storage pandamium:local functions."pandamium:utils/database/regions/save".target_region_index int 1 run data get storage pandamium.db.regions:io selected.index
data modify storage pandamium:local functions."pandamium:utils/database/regions/save".target_region_x set from storage pandamium.db.regions:io selected.entry.region[0]
data modify storage pandamium:local functions."pandamium:utils/database/regions/save".target_region_z set from storage pandamium.db.regions:io selected.entry.region[1]
data modify storage pandamium:local functions."pandamium:utils/database/regions/save".target_region_d set from storage pandamium.db.regions:io selected.entry.region[2]

execute store result score <database_last_region_entry_index> variable if data storage pandamium.db.regions:data entries[]
execute store result storage pandamium:local functions."pandamium:utils/database/regions/save".last_region_index int 1 run scoreboard players remove <database_last_region_entry_index> variable 1

data modify storage pandamium:local functions."pandamium:utils/database/regions/save".last_region_x set from storage pandamium.db.regions:data entries[-1].region[0]
data modify storage pandamium:local functions."pandamium:utils/database/regions/save".last_region_z set from storage pandamium.db.regions:data entries[-1].region[1]
data modify storage pandamium:local functions."pandamium:utils/database/regions/save".last_region_d set from storage pandamium.db.regions:data entries[-1].region[2]

function pandamium:impl/database/regions/save/remove_region_from_database with storage pandamium:local functions."pandamium:utils/database/regions/save"

data remove storage pandamium.db.regions:io selected
