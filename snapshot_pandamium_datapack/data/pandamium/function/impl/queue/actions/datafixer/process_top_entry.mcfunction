data modify storage pandamium:local functions."pandamium:impl/queue/actions/datafixer/*".id set from storage pandamium:queue selected.entry.user_ids[-1]
data remove storage pandamium:queue selected.entry.user_ids[-1]

function pandamium:utils/database/players/load/from_id with storage pandamium:local functions."pandamium:impl/queue/actions/datafixer/*"
function pandamium:utils/database/players/modify/patch
function pandamium:utils/database/players/save
