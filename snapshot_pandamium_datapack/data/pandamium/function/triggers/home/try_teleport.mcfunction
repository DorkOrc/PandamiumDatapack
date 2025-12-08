# arguments: home

function pandamium:utils/database/players/load/self

# fail if home does not exist
$execute unless data storage pandamium.db.players:io selected.entry.data.homes.$(home) run return run tellraw @s [{text:"[Homes] ",color:"dark_red"},{text:"Home $(home)",color:"red",bold:true},{text:" has not been set!",color:"red"}]

# extract location
$data modify storage pandamium:temp xyzd set from storage pandamium.db.players:io selected.entry.data.homes.$(home).xyzd
execute store result score <tp_x> variable store result storage pandamium:local functions."pandamium:triggers/home/*".x int 1 run data get storage pandamium:temp xyzd[0]
execute store result score <tp_y> variable store result storage pandamium:local functions."pandamium:triggers/home/*".y int 1 run data get storage pandamium:temp xyzd[1]
execute store result score <tp_z> variable store result storage pandamium:local functions."pandamium:triggers/home/*".z int 1 run data get storage pandamium:temp xyzd[2]
execute store result score <tp_d> variable store result score <dimension> variable run data get storage pandamium:temp xyzd[3]

# validate location
function pandamium:utils/get/dimension_string_id
data modify storage pandamium:local functions."pandamium:triggers/home/*".dimension set from storage pandamium:temp dimension_string_id
scoreboard players set <can_teleport_here> variable 0
function pandamium:triggers/home/check_destination with storage pandamium:local functions."pandamium:triggers/home/*"
execute if score <can_teleport_here> variable matches 0 run return run tellraw @s [{text:"[Homes] ",color:"dark_red"},{text:" You cannot teleport here!",color:"red"}]

# teleport
$function pandamium:utils/teleport/to_scores/from_source {source:"home teleport_to_home $(home)"}
gamemode survival @s[gamemode=spectator,predicate=!pandamium:in_spawn,predicate=!pandamium:player/min_staff_perms/moderator]

# feedback
$data modify storage pandamium:temp home_name set value {text:"Home $(home)",bold:true}
$execute if data storage pandamium.db.players:io selected.entry.data.homes.$(home).name run data modify storage pandamium:temp home_name set value ["",[{text:"",color:"white",italic:true},{storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).name",interpret:true}]]
tellraw @s [{text:"",color:"green"},{text:"[Homes]",color:"dark_green"}," Teleported to ",{storage:"pandamium:temp",nbt:"home_name",interpret:true},"!"]
