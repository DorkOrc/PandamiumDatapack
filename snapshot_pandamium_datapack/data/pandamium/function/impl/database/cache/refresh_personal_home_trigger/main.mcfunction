# arguments: home
# assume player data is already loaded

# load if not already
execute unless data storage pandamium.db.players:io selected run function pandamium:utils/database/players/load/self

# remove old trigger
$data modify storage pandamium:local functions."pandamium:impl/database/cache/refresh_personal_home_trigger/main".home_slot set value $(home)
data modify storage pandamium:local functions."pandamium:impl/database/cache/refresh_personal_home_trigger/main".user_id set from storage pandamium.db.players:io selected.entry.id
function pandamium:impl/database/cache/refresh_personal_home_trigger/remove_old_trigger with storage pandamium:local functions."pandamium:impl/database/cache/refresh_personal_home_trigger/main"

# add new trigger
$data modify storage pandamium:local functions."pandamium:impl/database/cache/refresh_personal_home_trigger/main".plain_name set from storage pandamium.db.players:io selected.entry.data.homes.$(home).plain_name
data modify storage pandamium:local functions."pandamium:impl/database/cache/refresh_personal_home_trigger/main".user_name set from storage pandamium.db.players:io selected.entry.username
$execute if data storage pandamium.db.players:io selected.entry.data.homes.$(home).plain_name run function pandamium:impl/database/cache/refresh_personal_home_trigger/add_new_trigger with storage pandamium:local functions."pandamium:impl/database/cache/refresh_personal_home_trigger/main"
