# arguments: home, username

# get home
data remove storage pandamium:temp home
$data modify storage pandamium:temp home set from storage pandamium.db.players:io selected.entry.data.homes.$(home)

execute unless data storage pandamium:temp home run return run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

# store coordinates
execute store result score <tp_x> variable run data get storage pandamium:temp home.xyzd[0]
execute store result score <tp_y> variable run data get storage pandamium:temp home.xyzd[1]
execute store result score <tp_z> variable run data get storage pandamium:temp home.xyzd[2]
execute store result score <tp_d> variable run data get storage pandamium:temp home.xyzd[3]

# teleport
gamemode spectator
$function pandamium:utils/teleport/to_scores/from_source {source:"homes teleport_to_target_home $(username)"}
tellraw @s [{"text":"","color":"green"},{"text":"[Homes]","color":"dark_green"}," Teleported to ",{"storage":"pandamium.db.players:io","nbt":"selected.entry.username"},"'s ",[{"text":"Home ","color":"aqua","bold":true},{"score":{"name":"<home>","objective":"variable"}}]," in spectator mode!"]
