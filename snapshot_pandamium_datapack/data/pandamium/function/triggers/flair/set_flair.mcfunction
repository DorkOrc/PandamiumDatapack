# arguments: index

data remove storage pandamium:local functions."pandamium:triggers/flair/*".new_type
$execute store success score <valid_option> variable run data modify storage pandamium:local functions."pandamium:triggers/flair/*".new_type set from storage pandamium:dictionary flair_types."$(index)"
execute if score <valid_option> variable matches 0 run return run tellraw @s [{color:"dark_red",text:"[Flair]"},{color:"red",text:" That is not a valid option!"}]
execute if data storage pandamium:local functions."pandamium:triggers/flair/*"{hidden:true} run return run tellraw @s [{color:"dark_red",text:"[Flair]"},{color:"red",text:" That is not a valid option!"}]

# set flair
execute store success score <changed> variable run data modify storage pandamium.db.players:io selected.entry.data.flair.type set from storage pandamium:local functions."pandamium:triggers/flair/*".index

# fail if nothing changed
execute if score <changed> variable matches 0 run return run function pandamium:triggers/flair/dialog/show_with_warning {args:{message:"Error: Nothing changed"}}

# update cache
data modify storage do:io input set value {storage:"pandamium:local",nbt:'functions."pandamium:triggers/flair/*".new_type.value',interpret:true}
execute unless data storage pandamium:local functions."pandamium:triggers/flair/*".new_type{colorable:false} run data modify storage do:io input.color set from storage pandamium.db.players:io selected.entry.data.flair.color
function do:text/resolve
function pandamium:utils/database/player_cache/load/self
data modify storage pandamium.db.player_cache:io selected.entry.flair set from storage do:io output
function pandamium:utils/database/player_cache/save

# save changes
function pandamium:utils/database/players/save

# update dialog
function pandamium:triggers/flair/dialog/show
