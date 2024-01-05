execute store result score <id> variable run data get storage pandamium.db:players selected.entry.id
scoreboard players add @a[predicate=pandamium:matches_id] unread_mails 1

data modify storage pandamium.db:players selected.entry.data.mail.inbox append value {mail_id:0}
data modify storage pandamium.db:players selected.entry.data.mail.inbox[-1].mail_id set from storage pandamium.db:mail selected.entry.mail_id
function pandamium:utils/database/players/save

scoreboard players add <sent_amount> variable 1
