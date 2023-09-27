# arguments: type

$data modify storage pandamium:temp entries set from storage pandamium:leaderboards "$(type)".entries
data modify storage pandamium:temp format set value []

scoreboard players set <place> variable 1
function pandamium:impl/leaderboards/update_formatted/loop

$data modify storage pandamium:leaderboards $(type).format set from storage pandamium:temp format
