data modify storage pandamium:local functions."pandamium:impl/queue/actions/datafixer.db.players/*".id set from storage pandamium:queue selected.entry.user_ids[-1]
data remove storage pandamium:queue selected.entry.user_ids[-1]

function pandamium:utils/database/players/load/from_id with storage pandamium:local functions."pandamium:impl/queue/actions/datafixer.db.players/*"
# automatically patches and saves upon loading whilst staying selected ^
