# arguments: username, (...)

data modify storage pandamium:local functions."pandamium:impl/queue/actions/datafixer/*".id set from storage pandamium:queue selected.entry.user_ids[-1]
function pandamium:utils/database/players/load/from_id with storage pandamium:local functions."pandamium:impl/queue/actions/datafixer/*"

data modify storage pandamium.db.players:io selected.entry.data.particles.damage_effect set from storage pandamium.db.players:io selected.entry.data.particles.damage
data remove storage pandamium.db.players:io selected.entry.data.particles.damage

function pandamium:utils/database/players/save

data remove storage pandamium:queue selected.entry.user_ids[-1]
