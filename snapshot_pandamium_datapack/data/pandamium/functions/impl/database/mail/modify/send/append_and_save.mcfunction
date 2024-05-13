execute store result score <id> variable run data get storage pandamium.db.players:io selected.entry.id
execute as @a[predicate=pandamium:matches_id,limit=1] run function pandamium:impl/database/mail/modify/send/as_receiver_if_online

function pandamium:utils/get/display_name/from_id with storage pandamium.db.players:io selected.entry
data modify storage pandamium:temp receivers_display_names append from storage pandamium:temp display_name

data modify storage pandamium.db.players:io selected.entry.data.mail.inbox append value {mail_id:0}
data modify storage pandamium.db.players:io selected.entry.data.mail.inbox[-1].mail_id set from storage pandamium.db.mail:io selected.entry.mail_id
function pandamium:utils/database/players/save

scoreboard players add <sent_amount> variable 1
