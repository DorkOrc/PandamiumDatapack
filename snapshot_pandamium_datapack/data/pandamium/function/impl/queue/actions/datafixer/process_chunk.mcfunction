
execute store result score <d> variable run data get storage pandamium:queue selected.entry.d
execute store result score <cx> variable run data get storage pandamium:queue selected.entry.chunks[-1][0]
execute store result score <cz> variable run data get storage pandamium:queue selected.entry.chunks[-1][1]

data remove storage pandamium.db.regions:io selected
function pandamium:utils/database/regions/load_chunk/from_cx_cz_d_scores
data remove storage pandamium.db.regions:io selected.chunk.entry.has_summoned_christmas_mob
function pandamium:utils/database/regions/save

data remove storage pandamium:queue selected.entry.chunks[-1]
return run function pandamium:impl/queue/utils/continue
