# arguments: home, username, old_trigger_name, plain_name

$scoreboard objectives remove $(old_trigger_name)
$data modify storage pandamium.db:cache online_players[{username:"$(username)"}].triggers append value {trigger_name:"home_$(plain_name)",run_trigger:"home set $(home)"}
$scoreboard objectives add home_$(plain_name) trigger
