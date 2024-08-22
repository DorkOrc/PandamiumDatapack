# load mail
execute store result score <mail_id> variable store result storage pandamium:templates macro.mail_id.mail_id int 1 run data get storage pandamium.db.click_events:io selected.entry.data.mail_id
function pandamium:utils/database/mail/load/from_mail_id with storage pandamium:templates macro.mail_id

data modify storage pandamium.db.mail:io selected.entry.public set value 1b
data remove storage pandamium.db.mail:io selected.entry.receivers[]

execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id
function pandamium:triggers/mail/expire_mail_click_events with storage pandamium:templates macro.id
function pandamium:triggers/mail/print_preparation_menu

function pandamium:utils/database/mail/save
