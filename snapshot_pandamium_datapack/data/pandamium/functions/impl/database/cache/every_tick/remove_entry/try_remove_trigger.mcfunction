# arguments: trigger_name

$execute if data storage pandamium.db:cache online_players[{triggers:[{trigger_name:"$(trigger_name)"}]}] run return 0

$data remove storage pandamium.db:cache online_players[].triggers[{trigger_name:"$(trigger_name)"}]
$scoreboard objectives remove $(trigger_name)
