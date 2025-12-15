# arguments: index

# store index and id into scores
$scoreboard players set @s db.players.index $(index)
$execute store result score @s id run data get storage pandamium.db.players:data entries[$(index)].id

## Update Username
#
$data modify storage pandamium:local functions."pandamium:impl/database/players/on_join/update_entry/*" set value {index:$(index)}

# copy previous name
$data modify storage pandamium:local functions."pandamium:impl/database/players/on_join/update_entry/*".old_username set from storage pandamium.db.players:data entries[$(index)].username

# get current name
function pandamium:utils/get/username
data modify storage pandamium:local functions."pandamium:impl/database/players/on_join/update_entry/*".new_username set from storage pandamium:temp username

# if the names are the same, do nothing
$execute store success score <username_changed> variable run data modify storage pandamium.db.players:data entries[$(index)].username set from storage pandamium:temp username
execute if score <username_changed> variable matches 0 run return 0

# if they are different, migrate their data
data modify storage do:io input set from storage pandamium:local functions."pandamium:impl/database/players/on_join/update_entry/*".old_username
function do:str/lower
data modify storage pandamium:local functions."pandamium:impl/database/players/on_join/update_entry/*".old_username_lowercase set from storage do:io output
data modify storage do:io input set from storage pandamium:local functions."pandamium:impl/database/players/on_join/update_entry/*".new_username
function do:str/lower
data modify storage pandamium:local functions."pandamium:impl/database/players/on_join/update_entry/*".new_username_lowercase set from storage do:io output

function pandamium:impl/database/players/on_join/update_entry/transfer_username with storage pandamium:local functions."pandamium:impl/database/players/on_join/update_entry/*"
