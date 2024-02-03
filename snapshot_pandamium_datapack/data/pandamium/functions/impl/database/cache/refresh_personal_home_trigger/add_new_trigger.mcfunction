# arguments: home, username, old_trigger_name, plain_name

$data modify storage pandamium.db:cache online_players[{username:"$(username)"}].triggers append value {alias:"home_$(plain_name)",trigger:"home",value:$(home)}
$execute if score @s optn.disable_dynamic_triggers.home_names matches 1 run data modify storage pandamium.db:cache online_players[{username:"$(username)"}].triggers[-1].disabled set value 1b
$scoreboard objectives add home_$(plain_name) trigger
