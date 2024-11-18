execute store result storage pandamium:queue selected.entry.rx int 1 run data get storage pandamium:queue selected.entry.regions[-1][0]
execute store result storage pandamium:queue selected.entry.rz int 1 run data get storage pandamium:queue selected.entry.regions[-1][1]
execute store result storage pandamium:queue selected.entry.d int 1 run data get storage pandamium:queue selected.entry.regions[-1][2]

function pandamium:utils/database/regions/load/from_rx_rz_d with storage pandamium:queue selected.entry
data modify storage pandamium:queue selected.entry.chunks append from storage pandamium.db.regions:io selected.entry.chunks[].chunk
function pandamium:utils/database/regions/save

data remove storage pandamium:queue selected.entry.regions[-1]
execute store result storage pandamium:queue selected.entry.meta.value int -1 if data storage pandamium:queue selected.entry.regions[]
return run function pandamium:impl/queue/utils/continue
