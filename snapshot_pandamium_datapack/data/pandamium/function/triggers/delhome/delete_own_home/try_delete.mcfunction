# arguments: home, id

function pandamium:utils/database/players/load/self

# fail if home does not exist
$execute unless data storage pandamium.db.players:io selected.entry.data.homes.$(home) run tellraw @s [{text:"[Homes] ",color:"dark_red"},{text:"Home $(home)",color:"red",bold:true},{text:" has not been set!",color:"red"}]
$execute unless data storage pandamium.db.players:io selected.entry.data.homes.$(home) run return 0

# get home name
$data modify storage pandamium:temp home_name set value {text:"Home $(home)",bold:true}
$execute if data storage pandamium.db.players:io selected.entry.data.homes.$(home).name run data modify storage pandamium:temp home_name set value ["",[{text:"",color:"white",italic:true},{storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).name",interpret:true}]," (Home $(home))"]

# check if datafixer is running
execute if data storage pandamium:queue entries[{action:"database.datafixer"}] run return run tellraw @s [{text:"[Homes]",color:"dark_red"},{text:" A database migration is currently in progress preventing homes from being modified. Try again in a few minutes.",color:"red"}]

# ask to confirm delete
$execute if score <confirm> variable matches 0 run tellraw @s [{text:"",color:"red"},{text:"[Homes]",color:"dark_red"},{text:" Are you sure you want to delete "},{storage:"pandamium:temp",nbt:"home_name",interpret:true},{text:"? "},{text:"[✔]",color:"dark_green",hover_event:{action:"show_text",value:[{text:"Click to delete ",color:"dark_green"},{storage:"pandamium:temp",nbt:"home_name",interpret:true}]},click_event:{action:"run_command",command:"trigger delhome set -$(home)"}}]
execute if score <confirm> variable matches 0 run return 0

# print success
$execute store result score <dimension> variable run data get storage pandamium.db.players:io selected.entry.data.homes.$(home).xyzd[3]
function pandamium:utils/get/dimension_name/from_score
$execute unless score @s hide_coordinates matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Homes]",color:"dark_green"},{text:" Deleted "},{storage:"pandamium:temp",nbt:"home_name",interpret:true},{text:" (previously at "},{storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).xyzd[0]",color:"aqua"},{text:" "},{storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).xyzd[1]",color:"aqua"},{text:" "},{storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).xyzd[2]",color:"aqua"},{text:" in "},{nbt:"dimension_name",storage:"pandamium:temp",color:"aqua"},{text:")!"}]
$execute if score @s hide_coordinates matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Homes]",color:"dark_green"},{text:" Deleted "},{storage:"pandamium:temp",nbt:"home_name",interpret:true},{text:" (previously at "},{storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).xyzd[0]",color:"aqua",obfuscated:true,extra:[{text:" "},{storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).xyzd[1]"},{text:" "},{storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).xyzd[2]"}]},{text:" in "},{nbt:"dimension_name",storage:"pandamium:temp",color:"aqua"},{text:")!"}]

# delete in chunk
$execute store result score <x> variable run data get storage pandamium.db.players:io selected.entry.data.homes.$(home).xyzd[0]
$execute store result score <y> variable run data get storage pandamium.db.players:io selected.entry.data.homes.$(home).xyzd[1]
$execute store result score <z> variable run data get storage pandamium.db.players:io selected.entry.data.homes.$(home).xyzd[2]
$execute store result score <d> variable run data get storage pandamium.db.players:io selected.entry.data.homes.$(home).xyzd[3]
function pandamium:utils/database/regions/load_chunk/from_xzd_scores
$data remove storage pandamium.db.regions:io selected.chunk.entry.homes[{data:[I;$(id),$(home)]}]
function pandamium:utils/database/regions/save

# delete home and home name
$data remove storage pandamium.db.players:io selected.entry.data.homes.$(home)

# remove personal trigger
$function pandamium:impl/database/cache/refresh_personal_home_trigger/main {home:$(home)}

# save
function pandamium:utils/database/players/save
