data modify storage pandamium:queue entries append value {action:"search_nearby_for_homes",meta:{do_bossbar:1b},homes:[],origin:{x:0,y:0,z:0,dimension:"minecraft:overworld"}}

# store origin user and position
execute store result storage pandamium:queue entries[-1].source int 1 store result storage pandamium:queue entries[-1].meta.players int 1 run scoreboard players get @s id
function pandamium:utils/get/position
execute store result storage pandamium:queue entries[-1].origin.x int 1 run scoreboard players get <x> variable
execute store result storage pandamium:queue entries[-1].origin.y int 1 run scoreboard players get <y> variable
execute store result storage pandamium:queue entries[-1].origin.z int 1 run scoreboard players get <z> variable
function pandamium:utils/get/dimension_string_id/from_position
data modify storage pandamium:queue entries[-1].origin.dimension set from storage pandamium:temp dimension_string_id

function pandamium:utils/get/dimension_name/from_position
data modify storage pandamium:queue entries[-1].meta.name set value {text:"Searching for homes in ",extra:[{color:"aqua",text:""}]}
data modify storage pandamium:queue entries[-1].meta.name.extra[0].text set from storage pandamium:temp dimension_name

# append all homes from chunks in all adjacent regions 
execute align xz positioned ~512.5 ~ ~512.5 run function pandamium:utils/database/regions/load/here
data modify storage pandamium:queue entries[-1].homes append from storage pandamium.db.regions:io selected.entry.chunks[].homes[]
execute align xz positioned ~512.5 ~ ~-511.5 run function pandamium:utils/database/regions/load/here
data modify storage pandamium:queue entries[-1].homes append from storage pandamium.db.regions:io selected.entry.chunks[].homes[]
execute align xz positioned ~-511.5 ~ ~512.5 run function pandamium:utils/database/regions/load/here
data modify storage pandamium:queue entries[-1].homes append from storage pandamium.db.regions:io selected.entry.chunks[].homes[]
execute align xz positioned ~-511.5 ~ ~-511.5 run function pandamium:utils/database/regions/load/here
data modify storage pandamium:queue entries[-1].homes append from storage pandamium.db.regions:io selected.entry.chunks[].homes[]
execute align xz positioned ~512.5 ~ ~0.5 run function pandamium:utils/database/regions/load/here
data modify storage pandamium:queue entries[-1].homes append from storage pandamium.db.regions:io selected.entry.chunks[].homes[]
execute align xz positioned ~0.5 ~ ~512.5 run function pandamium:utils/database/regions/load/here
data modify storage pandamium:queue entries[-1].homes append from storage pandamium.db.regions:io selected.entry.chunks[].homes[]
execute align xz positioned ~0.5 ~ ~-511.5 run function pandamium:utils/database/regions/load/here
data modify storage pandamium:queue entries[-1].homes append from storage pandamium.db.regions:io selected.entry.chunks[].homes[]
execute align xz positioned ~-511.5 ~ ~0.5 run function pandamium:utils/database/regions/load/here
data modify storage pandamium:queue entries[-1].homes append from storage pandamium.db.regions:io selected.entry.chunks[].homes[]
execute align xz positioned ~0.5 ~ ~0.5 run function pandamium:utils/database/regions/load/here
data modify storage pandamium:queue entries[-1].homes append from storage pandamium.db.regions:io selected.entry.chunks[].homes[]

execute store result storage pandamium:queue entries[-1].meta.max int 1 run data get storage pandamium:queue entries[-1].homes
