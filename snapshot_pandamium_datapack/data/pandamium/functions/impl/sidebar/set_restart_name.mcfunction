# arguments: seconds, minutes

$execute if score <sidebar_minutes> variable matches 0 run scoreboard players display name <sidebar.restart_countdown> sidebar {"color":"red","extra":[{"bold":true,"color":"dark_red","text":"$(seconds)"}," seconds"],"font":"minecraft:uniform","text":"Restart in "}
$execute if score <sidebar_minutes> variable matches 1.. if score <sidebar_seconds> variable matches 0..9 run scoreboard players display name <sidebar.restart_countdown> sidebar {"color":"red","extra":[{"bold":true,"color":"dark_red","text":"$(minutes):0$(seconds)"}],"font":"minecraft:uniform","text":"Restart in "}
$execute if score <sidebar_minutes> variable matches 1.. if score <sidebar_seconds> variable matches 10.. run scoreboard players display name <sidebar.restart_countdown> sidebar {"color":"red","extra":[{"bold":true,"color":"dark_red","text":"$(minutes):$(seconds)"}],"font":"minecraft:uniform","text":"Restart in "}
scoreboard players display numberformat <sidebar.restart_countdown> sidebar fixed ""
scoreboard players set <sidebar.restart_countdown> sidebar -2147483648
