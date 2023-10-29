# arguments: index

$scoreboard players set @s db.players.index $(index)
function pandamium:utils/get/username
$data modify storage pandamium:templates macro.index__old_username__new_username.old_username set from storage pandamium.db:players entries[$(index)].username
$execute store success score <username_changed> variable run data modify storage pandamium.db:players entries[$(index)].username set from storage pandamium:temp username
execute if score <username_changed> variable matches 1 run data modify storage pandamium:templates macro.index__old_username__new_username.new_username set from storage pandamium:temp username
execute if score <username_changed> variable matches 1 run function pandamium:impl/database/players/on_join/update_entry/transfer_username with storage pandamium:templates macro.index__old_username__new_username
