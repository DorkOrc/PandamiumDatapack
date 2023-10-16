# get home
function pandamium:triggers/homes/teleport_to_target_home/get_teleport_destination with storage pandamium:temp arguments
execute unless data storage pandamium:temp home run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute unless data storage pandamium:temp home run return 0

# store coordinates
execute store result score <tp_x> variable run data get storage pandamium:temp home.xyzd[0]
execute store result score <tp_y> variable run data get storage pandamium:temp home.xyzd[1]
execute store result score <tp_z> variable run data get storage pandamium:temp home.xyzd[2]
execute store result score <tp_d> variable run data get storage pandamium:temp home.xyzd[3]

# teleport
gamemode spectator
function pandamium:utils/teleport/to_scores/from_source {source:"homes teleport_to_target_home"}
tellraw @s [{"text":"","color":"green"},{"text":"[Homes]","color":"dark_green"}," Teleported to ",{"storage":"pandamium.db:players","nbt":"selected.entry.username"},"'s ",[{"text":"Home ","color":"aqua","bold":true},{"score":{"name":"<home>","objective":"variable"}}]," in spectator mode!"]
