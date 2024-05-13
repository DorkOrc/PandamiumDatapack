# arguments: home, plain_name

$data modify storage pandamium:cache online_players[-1].triggers append value {alias:"home.$(plain_name)",trigger:"home",value:$(home)}
$scoreboard objectives add home.$(plain_name) trigger ["home.$(plain_name)",{"text":" -> home set $(home)","color":"gray"}]
