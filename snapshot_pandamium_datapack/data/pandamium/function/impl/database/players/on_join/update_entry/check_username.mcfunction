# arguments: index

execute store result score @s db.players.index run data get storage pandamium:local functions."pandamium:impl/database/players/on_join/*".index
$execute store result score @s id run data get storage pandamium.db.players:data entries[$(index)].id

$data modify storage pandamium:local functions."pandamium:impl/database/players/on_join/*".old_username set from storage pandamium.db.players:data entries[$(index)].username
function pandamium:utils/get/username
$execute store success score <username_changed> variable run data modify storage pandamium.db.players:data entries[$(index)].username set from storage pandamium:temp username

execute if score <username_changed> variable matches 1 run data modify storage pandamium:local functions."pandamium:impl/database/players/on_join/*".new_username set from storage pandamium:temp username
execute if score <username_changed> variable matches 1 run function pandamium:impl/database/players/on_join/update_entry/transfer_username with storage pandamium:local functions."pandamium:impl/database/players/on_join/*"
