# arguments: type

data modify storage pandamium:temp priority.id set from storage pandamium.db:players selected.entry.id
$data modify storage pandamium:temp priority set from storage pandamium.db:players selected.entry.data.alts[{flags:{"$(type)_lb":1b}}]
execute store result score <priority_id> variable run data get storage pandamium:temp priority.id
