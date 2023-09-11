# arguments: home, plain_name

$data modify storage pandamium.db:cache online_players[-1].triggers append value {trigger_name:"home_$(plain_name)",run_trigger:"home set $(home)"}
$scoreboard objectives add home_$(plain_name) trigger
