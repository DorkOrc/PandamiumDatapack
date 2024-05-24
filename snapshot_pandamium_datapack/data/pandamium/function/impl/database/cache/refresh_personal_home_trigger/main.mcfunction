# arguments: home
# assume player data is already loaded

# load if not already
execute unless data storage pandamium.db.players:io selected run function pandamium:utils/database/players/load/self

# setup arguments
$data modify storage pandamium:temp arguments set value {home:$(home),old_trigger_name:""}
data modify storage pandamium:temp arguments.username set from storage pandamium.db.players:io selected.entry.username
$data modify storage pandamium:temp arguments.plain_name set from storage pandamium.db.players:io selected.entry.data.homes.$(home).plain_name

# get old trigger name and remove that trigger entry
function pandamium:impl/database/cache/refresh_personal_home_trigger/get_old_trigger with storage pandamium:temp arguments

# remove old trigger
execute unless data storage pandamium:temp arguments{old_trigger_name:""} run function pandamium:impl/database/cache/refresh_personal_home_trigger/remove_old_trigger with storage pandamium:temp arguments

# append new trigger entry, and add new trigger
$execute if data storage pandamium.db.players:io selected.entry.data.homes.$(home).name run function pandamium:impl/database/cache/refresh_personal_home_trigger/add_new_trigger with storage pandamium:temp arguments
