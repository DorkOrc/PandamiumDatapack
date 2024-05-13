data modify storage pandamium:queue entries append value {action:"region_search.homes",source:0,gametime_start:0,entries:[],initial_entries_length:0,output:[],origin:{x:0,y:0,z:0,dimension:"minecraft:overworld"},child:0b}
execute store result storage pandamium:queue entries[-1].source int 1 run scoreboard players get @s id
execute store result storage pandamium:queue entries[-1].gametime_start int 1 run time query gametime

execute align xz positioned ~512.5 ~ ~512.5 run function pandamium:utils/database/regions/load/here
data modify storage pandamium:queue entries[-1].entries append from storage pandamium.db.regions:io selected.entry.chunks[].homes[]
execute align xz positioned ~512.5 ~ ~-511.5 run function pandamium:utils/database/regions/load/here
data modify storage pandamium:queue entries[-1].entries append from storage pandamium.db.regions:io selected.entry.chunks[].homes[]
execute align xz positioned ~-511.5 ~ ~512.5 run function pandamium:utils/database/regions/load/here
data modify storage pandamium:queue entries[-1].entries append from storage pandamium.db.regions:io selected.entry.chunks[].homes[]
execute align xz positioned ~-511.5 ~ ~-511.5 run function pandamium:utils/database/regions/load/here
data modify storage pandamium:queue entries[-1].entries append from storage pandamium.db.regions:io selected.entry.chunks[].homes[]
execute align xz positioned ~512.5 ~ ~0.5 run function pandamium:utils/database/regions/load/here
data modify storage pandamium:queue entries[-1].entries append from storage pandamium.db.regions:io selected.entry.chunks[].homes[]
execute align xz positioned ~0.5 ~ ~512.5 run function pandamium:utils/database/regions/load/here
data modify storage pandamium:queue entries[-1].entries append from storage pandamium.db.regions:io selected.entry.chunks[].homes[]
execute align xz positioned ~0.5 ~ ~-511.5 run function pandamium:utils/database/regions/load/here
data modify storage pandamium:queue entries[-1].entries append from storage pandamium.db.regions:io selected.entry.chunks[].homes[]
execute align xz positioned ~-511.5 ~ ~0.5 run function pandamium:utils/database/regions/load/here
data modify storage pandamium:queue entries[-1].entries append from storage pandamium.db.regions:io selected.entry.chunks[].homes[]
execute align xz positioned ~0.5 ~ ~0.5 run function pandamium:utils/database/regions/load/here
data modify storage pandamium:queue entries[-1].entries append from storage pandamium.db.regions:io selected.entry.chunks[].homes[]

execute store result storage pandamium:queue entries[-1].initial_entries_length int 1 run data get storage pandamium:queue entries[-1].entries

function pandamium:utils/get/position
execute store result storage pandamium:queue entries[-1].origin.x int 1 run scoreboard players get <x> variable
execute store result storage pandamium:queue entries[-1].origin.y int 1 run scoreboard players get <y> variable
execute store result storage pandamium:queue entries[-1].origin.z int 1 run scoreboard players get <z> variable
function pandamium:utils/get/dimension_string_id/from_position
data modify storage pandamium:queue entries[-1].origin.dimension set from storage pandamium:temp dimension_string_id
