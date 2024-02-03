# arguments: alias

$execute if data storage pandamium.db:cache online_players[{triggers:[{alias:"$(alias)"}]}] run return 0

$data remove storage pandamium.db:cache online_players[].triggers[{alias:"$(alias)"}]
$scoreboard objectives remove $(alias)
