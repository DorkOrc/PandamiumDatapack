function pandamium:utils/database/load_self
$execute store result score <tp_x> variable run data get storage pandamium.db:players selected.entry.data.homes.$(home).xyzd[0]
$execute store result score <tp_y> variable run data get storage pandamium.db:players selected.entry.data.homes.$(home).xyzd[1]
$execute store result score <tp_z> variable run data get storage pandamium.db:players selected.entry.data.homes.$(home).xyzd[2]
$execute store result score <tp_d> variable run data get storage pandamium.db:players selected.entry.data.homes.$(home).xyzd[3]

$tellraw @a[tag=source,limit=1] [{"text":"","color":"green"},{"text":"[Homes]","color":"blue"}," Teleported to ",{"selector":"@s"},"'s ",{"text":"Home $(home)","color":"aqua","bold":true}," in spectator mode!"]
