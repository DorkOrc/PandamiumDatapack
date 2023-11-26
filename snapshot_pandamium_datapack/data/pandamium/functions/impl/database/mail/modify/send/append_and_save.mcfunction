data modify storage pandamium.db:players selected.entry.data.mail.inbox append value {mail_id:0}
data modify storage pandamium.db:players selected.entry.data.mail.inbox[-1].mail_id set from storage pandamium.db:mail selected.entry.mail_id
function pandamium:utils/database/players/save
scoreboard players add <sent_amount> variable 1
