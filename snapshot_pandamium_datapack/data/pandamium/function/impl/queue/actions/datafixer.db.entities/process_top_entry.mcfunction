data modify storage pandamium:local functions."pandamium:impl/queue/actions/datafixer.db.entities/*".uuid set from storage pandamium:queue selected.entry.uuids[-1]
data remove storage pandamium:queue selected.entry.uuids[-1]

function pandamium:utils/database/entities/load/from_uuid with storage pandamium:local functions."pandamium:impl/queue/actions/datafixer.db.entities/*"
# automatically patches and saves upon loading whilst staying selected ^
