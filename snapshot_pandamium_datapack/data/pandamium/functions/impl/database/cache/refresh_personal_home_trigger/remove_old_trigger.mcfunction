# arguments: old_trigger_name, username

$execute unless data storage pandamium.db:cache online_players[{triggers:[{trigger_name:"$(old_trigger_name)"}]}] run scoreboard objectives remove $(old_trigger_name)

# reset in case it was not removed
$scoreboard players reset $(username) $(old_trigger_name)
