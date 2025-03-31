# arguments: type

$data modify storage pandamium:local functions."pandamium:impl/leader_boards/holograms/*".display set from storage pandamium.leader_boards:data leader_boards.$(type).display
$data modify storage pandamium:local functions."pandamium:impl/leader_boards/holograms/*".type set value "$(type)"

function pandamium:impl/leader_boards/holograms/check_location with storage pandamium:local functions."pandamium:impl/leader_boards/holograms/*".display.hologram_location
