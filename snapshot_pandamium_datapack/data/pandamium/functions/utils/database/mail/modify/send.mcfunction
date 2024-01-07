execute unless data storage pandamium.db:mail selected.entry run return fail
execute unless data storage pandamium.db:mail selected.entry.receivers[0] run return fail
execute if data storage pandamium.db:mail selected.entry{sent:1b} run return fail

# set sent
data modify storage pandamium.db:mail selected.entry.sent set value 1b

# set time
execute store result storage pandamium.db:mail selected.entry.gametime int 1 run time query gametime
data modify storage pandamium.db:mail selected.entry.date set value [I;0,0,0,0]
execute store result storage pandamium.db:mail selected.entry.date[0] int 1 run scoreboard players get <year> global
execute store result storage pandamium.db:mail selected.entry.date[1] int 1 run scoreboard players get <month> global
execute store result storage pandamium.db:mail selected.entry.date[2] int 1 run scoreboard players get <day> global
execute store result storage pandamium.db:mail selected.entry.date[3] int 1 run scoreboard players get <hour> global

# add to sender outbox
data remove storage pandamium.db:players selected
function pandamium:utils/database/players/load/from_id with storage pandamium.db:mail selected.entry.sender
#execute unless data storage pandamium.db:players selected run tellraw @a[scores={send_extra_debug_info=2..}] {"text":"[Server: Attempted to add mail to invalid player's outbox; Moved to server outbox instead]","color":"gray","italic":true,"hoverEvent":{"action":"show_text","contents":["Failed to load players db entry with arguments ",{"storage":"pandamium.db:mail","nbt":"selected.entry.sender","color":"aqua"}]}} 
execute unless data storage pandamium.db:players selected run data modify storage pandamium.db:mail server_outbox append value {mail_id:0}
execute unless data storage pandamium.db:players selected run data modify storage pandamium.db:mail server_outbox[-1].mail_id set from storage pandamium.db:mail selected.entry.mail_id
execute if data storage pandamium.db:players selected run data modify storage pandamium.db:players selected.entry.data.mail.outbox append value {mail_id:0}
execute if data storage pandamium.db:players selected run data modify storage pandamium.db:players selected.entry.data.mail.outbox[-1].mail_id set from storage pandamium.db:mail selected.entry.mail_id
execute if data storage pandamium.db:players selected run function pandamium:utils/database/players/save

# add to receiver inboxes
data modify storage pandamium:templates macro.mail_id.mail_id set from storage pandamium.db:mail selected.entry.mail_id
data modify storage pandamium:temp entries set from storage pandamium.db:mail selected.entry.receivers
scoreboard players set <sent_amount> variable 0
execute if data storage pandamium:temp entries[0] run function pandamium:impl/database/mail/modify/send/loop with storage pandamium:templates macro.mail_id

return run scoreboard players get <sent_amount> variable
