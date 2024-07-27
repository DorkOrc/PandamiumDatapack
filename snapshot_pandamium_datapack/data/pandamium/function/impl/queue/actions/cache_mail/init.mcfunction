data modify storage pandamium:queue selected.entry.meta.name set value '"Caching Mail"'

execute unless data storage pandamium:queue selected.entry.user_id run return run data modify storage pandamium:queue selected.entry.meta.cancel set value 1b

data modify storage pandamium:queue selected.entry.id set from storage pandamium:queue selected.entry.user_id
function pandamium:utils/database/players/load/from_id with storage pandamium:queue selected.entry
data modify storage pandamium:queue selected.entry.mail set value []
data modify storage pandamium:queue selected.entry.mail set from storage pandamium.db.players:io selected.entry.data.mail.inbox

function pandamium:utils/database/player_cache/load/from_id with storage pandamium:queue selected.entry
data modify storage pandamium.db.player_cache:io selected.entry.mail.inbox set value []

execute unless data storage pandamium:queue selected.entry.mail[0] run return run data modify storage pandamium:queue selected.entry.meta.cancel set value 1b

execute store result storage pandamium:queue selected.entry.meta.max int 1 if data storage pandamium:queue selected.entry.mail[]
