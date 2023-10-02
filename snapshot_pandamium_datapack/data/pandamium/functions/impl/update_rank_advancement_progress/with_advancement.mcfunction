# arguments: rank_name, progress, offset, username

$execute as $(username) run advancement grant @s only pandamium:pandamium/rank_up/$(rank_name) progress_$(progress)
$execute if entity $(username) run return 0

$function pandamium:utils/database/players/load/from_username {username:"$(username)"}
$data modify storage pandamium.db:players selected.entry.data.join_events append value {type:"grant_advancement",advancement:"pandamium:pandamium/rank_up/$(rank_name) progress_$(progress)"}
function pandamium:utils/database/players/save
