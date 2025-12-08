# arguments: home_slot

$execute store result score <x> variable run data get storage pandamium.db.players:io selected.entry.data.homes.$(home_slot).xyzd[0]
$execute store result score <y> variable run data get storage pandamium.db.players:io selected.entry.data.homes.$(home_slot).xyzd[1]
$execute store result score <z> variable run data get storage pandamium.db.players:io selected.entry.data.homes.$(home_slot).xyzd[2]
$execute store result score <dimension> variable run data get storage pandamium.db.players:io selected.entry.data.homes.$(home_slot).xyzd[3]

execute unless score <dimension> variable matches 0 run return fail
execute unless score <x> variable matches -512..512 unless score <z> variable matches -512..512 run return fail

$data modify storage pandamium.db.players:io selected.entry.data.homes.$(home_slot).xyzd[3] set value 4

$function pandamium:utils/log {args:{message:["Fixed Data: Moved ",{storage:"pandamium.db.players:io",nbt:"selected.entry.username"},"'s Home $(home_slot) from (",{score:{name:"<x>",objective:"variable"}}," ",{score:{name:"<y>",objective:"variable"}}," ",{score:{name:"<z>",objective:"variable"}}," in minecraft:overworld) to (",{score:{name:"<x>",objective:"variable"}}," ",{score:{name:"<y>",objective:"variable"}}," ",{score:{name:"<z>",objective:"variable"}}," in pandamium:hub)"]}}
