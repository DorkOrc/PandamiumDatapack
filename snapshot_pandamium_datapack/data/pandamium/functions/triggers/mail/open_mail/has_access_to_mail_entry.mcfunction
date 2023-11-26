# arguments: id

$execute store success score <has_access> variable if data storage pandamium.db:mail selected.entry.receivers[{id:$(id)}]
$execute if score <has_access> variable matches 1 run data modify storage pandamium.db:mail selected.entry.receivers[{id:$(id)}].read set value 1b
