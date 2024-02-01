# arguments: home, plain_name

$data modify storage pandamium.db:cache online_players[-1].triggers append value {alias:"home_$(plain_name)",trigger:"home",value:$(home)}
$scoreboard objectives add home_$(plain_name) trigger
