# arguments: type

# load main account
function pandamium:utils/database/players/load/from_id with storage pandamium.db.players:io selected.entry.data.alt_of

# fail here if the main account does not concede to the alt account
$execute unless data storage pandamium.db.players:io selected.entry.data.alts[{id:$(id),flags:{"$(type)_lb":1b}}] run return run data remove storage pandamium.db.players:io selected

# re-load target account
function pandamium:utils/database/players/load/from_id with storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*"
