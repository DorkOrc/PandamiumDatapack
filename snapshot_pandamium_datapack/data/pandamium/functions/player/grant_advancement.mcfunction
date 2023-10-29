# arguments: username, advancement

$execute if entity $(username) run return run advancement grant $(username) only $(advancement)

$function pandamium:utils/database/players/load/from_username {username:"$(username)"}
$data modify storage pandamium.db:players selected.entry.data.join_events append value {type:"grant_advancement",advancement:"$(advancement)"}
function pandamium:utils/database/players/save
# ^ eventually change to just modify entry directly rather than forcing a load+save; then move to utils
