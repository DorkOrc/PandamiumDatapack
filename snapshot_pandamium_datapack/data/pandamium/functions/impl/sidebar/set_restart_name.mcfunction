# arguments: seconds

$scoreboard players display name <sidebar.restart_countdown> sidebar {"color":"red","font":"minecraft:uniform","text":"Restart in $(seconds) seconds"}
scoreboard players display numberformat <sidebar.restart_countdown> sidebar fixed ""
scoreboard players set <sidebar.restart_countdown> sidebar -2147483648
