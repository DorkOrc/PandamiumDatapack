# arguments: home

function pandamium:utils/database/players/load/self

# fail if home does not exist
$execute unless data storage pandamium.db.players:io selected.entry.data.homes.$(home) run tellraw @s [{"text":"[Homes] ","color":"dark_red"},{"text":"Home $(home)","color":"red","bold":true},{"text":" has not been set!","color":"red"}]
$execute unless data storage pandamium.db.players:io selected.entry.data.homes.$(home) run return 0

$data modify storage pandamium:temp xyzd set from storage pandamium.db.players:io selected.entry.data.homes.$(home).xyzd
execute store result score <tp_x> variable run data get storage pandamium:temp xyzd[0]
execute store result score <tp_y> variable run data get storage pandamium:temp xyzd[1]
execute store result score <tp_z> variable run data get storage pandamium:temp xyzd[2]
execute store result score <tp_d> variable run data get storage pandamium:temp xyzd[3]

$function pandamium:utils/teleport/to_scores/from_source {source:"home teleport_to_home $(home)"}
gamemode survival @s[gamemode=spectator,predicate=!pandamium:in_spawn,scores={staff_perms=..1}]

$data modify storage pandamium:temp home_name set value '{"text":"Home $(home)","bold":true}'
$execute if data storage pandamium.db.players:io selected.entry.data.homes.$(home).name run data modify storage pandamium:temp home_name set value '["",[{"text":"","color":"white","italic":true},{"storage":"pandamium.db.players:io","nbt":"selected.entry.data.homes.$(home).name","interpret":true}]]'

tellraw @s [{"text":"","color":"green"},{"text":"[Homes]","color":"dark_green"}," Teleported to ",{"storage":"pandamium:temp","nbt":"home_name","interpret":true},"!"]
