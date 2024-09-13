# arguments: id

$execute unless data storage pandamium.db.mail:io selected.entry.receivers[{id:$(id)}] run return 0

scoreboard players set <has_access> variable 1
$execute store success score <had_already_read> variable if data storage pandamium.db.mail:io selected.entry.receivers[{id:$(id),read:1b}]
$execute if score <had_already_read> variable matches 0 run data modify storage pandamium.db.mail:io selected.entry.receivers[{id:$(id)}].read set value 1b
