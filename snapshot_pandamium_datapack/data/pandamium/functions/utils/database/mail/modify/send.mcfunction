execute unless data storage pandamium.db:mail selected.entry run return fail
execute unless data storage pandamium.db:mail selected.entry.receivers[0] run return fail
execute if data storage pandamium.db:mail selected.entry{sent:1b} run return fail

data modify storage pandamium.db:mail selected.entry.sent set value 1b

data modify storage pandamium:templates macro.mail_id.mail_id set from storage pandamium.db:mail selected.entry.mail_id
data modify storage pandamium:temp entries set from storage pandamium.db:mail selected.entry.receivers
scoreboard players set <sent_amount> variable 0
execute if data storage pandamium:temp entries[0] run function pandamium:impl/database/mail/modify/send/loop with storage pandamium:templates macro.mail_id

# return the number of players it successfully sent to