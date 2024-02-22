# load mail
execute store result score <mail_id> variable store result storage pandamium:templates macro.mail_id.mail_id int 1 run data get storage pandamium.db:click_events selected.entry.data.mail_id
function pandamium:utils/database/mail/load/from_mail_id with storage pandamium:templates macro.mail_id

execute unless data storage pandamium.db:mail selected.entry{ephemeral:1b} run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" This mail is not ephemeral!","color":"red"}]

execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id
function pandamium:triggers/mail/expire_mail_click_events with storage pandamium:templates macro.id

data modify storage pandamium.db:mail selected.entry.data.completed_ephemeral set value 1b

tellraw @s [{"text":"[Mail]","color":"dark_green"},[{"text":" Ephemeral mail was removed from your inbox.","color":"green"}]]
function pandamium:utils/database/players/load/self
function pandamium:triggers/mail/remove_mail_from_inbox_of_selected_player with storage pandamium.db:mail selected.entry
function pandamium:utils/database/players/save

function pandamium:utils/database/mail/save
