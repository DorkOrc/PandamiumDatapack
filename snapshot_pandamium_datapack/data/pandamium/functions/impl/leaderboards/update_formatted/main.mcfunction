# arguments: type

$data modify storage pandamium:temp entries set from storage pandamium:leaderboards leader_boards."$(type)".entries
data modify storage pandamium:templates macro.template.template set value "generic"
$data modify storage pandamium:templates macro.template.template set from storage pandamium:leaderboards leader_boards."$(type)".template
data modify storage pandamium:temp format set value []

scoreboard players set <place> variable 1
function pandamium:impl/leaderboards/update_formatted/loop with storage pandamium:templates macro.template

$data modify storage pandamium:leaderboards leader_boards."$(type)".format set from storage pandamium:temp format
