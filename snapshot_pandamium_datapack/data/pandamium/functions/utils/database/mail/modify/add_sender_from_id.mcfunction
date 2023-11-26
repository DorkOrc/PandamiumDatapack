# arguments: id

execute unless data storage pandamium.db:mail selected.entry run return fail
execute if data storage pandamium.db:mail selected.entry.sender{type:"player"} run return fail

$data modify storage pandamium.db:mail selected.entry.sender set value {type:"player",id:$(id)}

$function pandamium:utils/database/players/load/from_id {id:$(id)}
data modify storage pandamium.db:players selected.entry.data.mail.outbox append value {mail_id:0}
data modify storage pandamium.db:players selected.entry.data.mail.outbox[-1].mail_id set from storage pandamium.db:mail selected.entry.mail_id
function pandamium:utils/database/players/save
