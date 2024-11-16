# arguments: id, home

$execute store result score <x> variable run data get storage pandamium.db.players:io selected.entry.data.homes.$(home).xyzd[0]
$execute store result score <y> variable run data get storage pandamium.db.players:io selected.entry.data.homes.$(home).xyzd[1]
$execute store result score <z> variable run data get storage pandamium.db.players:io selected.entry.data.homes.$(home).xyzd[2]
$execute store result score <d> variable run data get storage pandamium.db.players:io selected.entry.data.homes.$(home).xyzd[3]
function pandamium:utils/database/regions/load_chunk/from_xzd_scores
$data modify storage pandamium.db.regions:io selected.chunk.entry.homes[{data:[I;$(id),$(home)]}].xyz set from storage pandamium.db.players:io selected.entry.data.homes.$(home).xyzd
$data remove storage pandamium.db.regions:io selected.chunk.entry.homes[{data:[I;$(id),$(home)]}].xyz[-1]
$data modify storage pandamium.db.regions:io selected.chunk.entry.homes[{data:[I;$(id),$(home)]}].time set from storage pandamium.db.players:io selected.entry.data.homes.$(home).hour_id
function pandamium:utils/database/regions/save
