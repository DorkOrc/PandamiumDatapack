# arguments: mail_id

function pandamium:utils/database/players/load/self
$data remove storage pandamium.db:players selected.entry.data.mail.inbox[{mail_id:$(mail_id)}]
function pandamium:utils/database/players/save
