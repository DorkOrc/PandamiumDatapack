# arguments: mail_id

$data remove storage pandamium.db.players:io selected.entry.data.mail.inbox[{mail_id:$(mail_id)}]

function pandamium:utils/database/player_cache/load/from_id with storage pandamium.db.players:io selected.entry
$data remove storage pandamium.db.player_cache:io selected.entry.mail.inbox[{mail_id:$(mail_id)}]
function pandamium:utils/database/player_cache/save
