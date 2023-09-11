# arguments: home, username

$data modify storage pandamium:temp arguments.old_trigger_name set from storage pandamium.db:cache online_players[{username:"$(username)"}].triggers[{run_trigger:"home set $(home)"}].trigger_name
$data remove storage pandamium.db:cache online_players[{username:"$(username)"}].triggers[{run_trigger:"home set $(home)"}]
