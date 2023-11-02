# arguments: username, advancement

$execute if entity $(username) run return run advancement grant $(username) only $(advancement)

$data modify storage pandamium:templates macro.index__advancement.advancement set value "$(advancement)"
$execute store result storage pandamium:templates macro.index__advancement.index int 1 run data get storage pandamium.db:players username_indexes."$(username)"
function pandamium:impl/grant_advancement/with_username with storage pandamium:templates macro.index__advancement
