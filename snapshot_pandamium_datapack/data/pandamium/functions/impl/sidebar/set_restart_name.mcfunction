# arguments: seconds

$scoreboard players display name <sidebar.restart_countdown> sidebar {"color":"red","extra":[{"bold":true,"color":"dark_red","text":"$(seconds)"}," seconds"],"font":"minecraft:uniform","text":"Restart in "}
scoreboard players display numberformat <sidebar.restart_countdown> sidebar fixed ""
scoreboard players set <sidebar.restart_countdown> sidebar -2147483648
