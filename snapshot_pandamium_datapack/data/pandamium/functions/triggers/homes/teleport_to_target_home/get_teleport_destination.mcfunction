$execute store result score <tp_x> variable run data get storage pandamium.db:players selected.entry.data.homes.$(home).xyzd[0]
$execute store result score <tp_y> variable run data get storage pandamium.db:players selected.entry.data.homes.$(home).xyzd[1]
$execute store result score <tp_z> variable run data get storage pandamium.db:players selected.entry.data.homes.$(home).xyzd[2]
$execute store result score <tp_d> variable run data get storage pandamium.db:players selected.entry.data.homes.$(home).xyzd[3]

tellraw @s [{"text":"","color":"green"},{"text":"[Homes]","color":"blue"}," Teleported to ",{"storage":"pandamium.db:players","nbt":"selected.entry.username"},"'s ",[{"text":"Home ","color":"aqua","bold":true},{"score":{"name":"<home>","objective":"variable"}}]," in spectator mode!"]
