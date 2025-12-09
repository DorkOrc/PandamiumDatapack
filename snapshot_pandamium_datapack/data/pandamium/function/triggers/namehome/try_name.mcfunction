function pandamium:utils/database/players/load/self

# fail if home does not exist
$execute store success score <home_exists> variable if data storage pandamium.db.players:io selected.entry.data.homes.$(home)
execute if score <home_exists> variable matches 0 run return run tellraw @s [{text:"[Homes]",color:"dark_red"},{text:" Home $(home)",color:"red",bold:true},{text:" has not been set!",color:"red"}]

# check for mainhand item name
execute unless items entity @s weapon.* * run return run tellraw @s [{text:"[Homes]",color:"dark_red"},{text:" You are not holding an item! To rename a home, hold an item which has been renamed using an anvil.",color:"red"}]
item replace block 5 0 0 contents from entity @s weapon.mainhand
execute unless items entity @s weapon.mainhand * run item replace block 5 0 0 contents from entity @s weapon.offhand
execute unless items block 5 0 0 contents *[custom_name] run return run tellraw @s [{text:"[Homes]",color:"dark_red"},{text:" The item you are holding is not named! To rename a home, hold an item which has been renamed using an anvil.",color:"red"}]

data modify storage pandamium:local functions."pandamium:triggers/namehome/*".text set from block 5 0 0 item.components.minecraft:custom_name
execute unless score @s gameplay_perms matches 6.. run function pandamium:triggers/namehome/remove_formatting/main

# get home name
$data modify storage pandamium:temp home_name set value {text:"Home $(home)",bold:true}
$execute if data storage pandamium.db.players:io selected.entry.data.homes.$(home).name run data modify storage pandamium:temp home_name set value {text:"",extra:[{text:"",color:"white",italic:true,extra:[{storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).name",interpret:true}]},{text:" (Home $(home))"}]}

# fail if name is the same
$execute store result score <different> variable run data modify block 5 0 0 item.components."minecraft:custom_name" set from storage pandamium.db.players:io selected.entry.data.homes.$(home).name
$execute if score <different> variable matches 0 if data storage pandamium.db.players:io selected.entry.data.homes.$(home).name run return run tellraw @s [{text:"[Homes]",color:"dark_red"},{text:" That home is already called ",color:"red",extra:[{text:"",color:"white",italic:true,extra:[{storage:"pandamium:local",nbt:"functions.'pandamium:triggers/namehome/*'.text",interpret:true}]},{text:"!"}]}]

# ask to confirm rename
$execute if score <do_rename> variable matches 0 if data storage pandamium.db.players:io selected.entry.data.homes.$(home).name run return run tellraw @s [{text:"",color:"red"},{text:"[Homes]",color:"dark_red"},{text:" Are you sure you want to rename "},{storage:"pandamium:temp",nbt:"home_name",interpret:true},{text:"? "},{text:"[✔]",color:"dark_green",hover_event:{action:"show_text",value:[{text:"Click to rename ",color:"dark_green"},{storage:"pandamium:temp",nbt:"home_name",interpret:true}]},click_event:{action:"run_command",command:"trigger namehome set -$(home)"}}]

# print success
tellraw @s [{text:"",color:"green"},{text:"[Homes]",color:"dark_green"}," Renamed ",{storage:"pandamium:temp",nbt:"home_name",interpret:true}," to ",{text:"",color:"white",italic:true,extra:[{storage:"pandamium:local",nbt:"functions.'pandamium:triggers/namehome/*'.text",interpret:true}]},"!"]

# update home name
$data modify storage pandamium.db.players:io selected.entry.data.homes.$(home).name set from storage pandamium:local functions."pandamium:triggers/namehome/*".text

# update home plain_name
data modify storage pandamium:text input set from storage pandamium:local functions."pandamium:triggers/namehome/*".text
function pandamium:utils/text/flatten_to_alphanumeric

data modify storage pandamium:local functions."pandamium:triggers/namehome/*".plain_name set from storage pandamium:text output

scoreboard players set <duplicate> variable 1
function pandamium:triggers/namehome/determine_duplicate with storage pandamium:local functions."pandamium:triggers/namehome/*"

$execute if score <duplicate> variable matches 0 run data modify storage pandamium.db.players:io selected.entry.data.homes.$(home).plain_name set from storage pandamium:text output

$execute if score <duplicate> variable matches 1 run data modify storage pandamium:local functions."pandamium:triggers/namehome/*".home set value $(home)
 execute if score <duplicate> variable matches 1 run function pandamium:triggers/namehome/write_duplicate with storage pandamium:local functions."pandamium:triggers/namehome/*"

# add or update personal trigger
$function pandamium:impl/database/cache/refresh_personal_home_trigger/main {home:$(home)}

# save
function pandamium:utils/database/players/save
