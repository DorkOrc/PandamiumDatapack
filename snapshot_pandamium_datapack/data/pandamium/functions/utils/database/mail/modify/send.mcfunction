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

## Sender
# load from id
data remove storage pandamium.db:players selected
execute if data storage pandamium.db:mail selected.entry.sender.id run function pandamium:utils/database/players/load/from_id with storage pandamium.db:mail selected.entry.sender

# get display name
execute store success score <sender_is_player> variable unless data storage pandamium.db:mail selected.entry.sender.type
execute if data storage pandamium.db:mail selected.entry.sender{type:"player"} run scoreboard players set <sender_is_player> variable 1

data modify storage pandamium:temp sender_display_name set value '"Unknown"'
execute if score <sender_is_player> variable matches 0 if data storage pandamium.db:mail selected.entry.sender{type:"server"} run data modify storage pandamium:temp sender_display_name set value '"Server"'
execute if score <sender_is_player> variable matches 0 if data storage pandamium.db:mail selected.entry.sender{type:"staff"} run data modify storage pandamium:temp sender_display_name set value '"The Staff Team"'
execute if score <sender_is_player> variable matches 1 run function pandamium:utils/get/display_name/from_id with storage pandamium.db:mail selected.entry.sender
execute if score <sender_is_player> variable matches 1 run data modify storage pandamium:temp sender_display_name set from storage pandamium:temp display_name

# add to outbox
execute unless data storage pandamium.db:players selected if data storage pandamium.db:mail selected.entry.sender.id run tellraw @a[scores={send_extra_debug_info=2..}] [{"text":"[Server: Attempted to add mail ","color":"gray","italic":true,"hoverEvent":{"action":"show_text","contents":["Failed to load player db entry with arguments ",{"storage":"pandamium.db:mail","nbt":"selected.entry.sender","color":"aqua"}]}},{"storage":"pandamium.db:mail","nbt":"selected.entry.mail_id"}," to invalid player's outbox; Moved to server outbox instead]"]
execute unless data storage pandamium.db:players selected run data modify storage pandamium.db:mail server_outbox append value {mail_id:0}
execute unless data storage pandamium.db:players selected run data modify storage pandamium.db:mail server_outbox[-1].mail_id set from storage pandamium.db:mail selected.entry.mail_id
execute if data storage pandamium.db:players selected run data modify storage pandamium.db:players selected.entry.data.mail.outbox append value {mail_id:0}
execute if data storage pandamium.db:players selected run data modify storage pandamium.db:players selected.entry.data.mail.outbox[-1].mail_id set from storage pandamium.db:mail selected.entry.mail_id
execute if data storage pandamium.db:players selected run function pandamium:utils/database/players/save

## Receivers
# add to receiver inboxes (and notify if online)
data modify storage pandamium:templates macro.mail_id.mail_id set from storage pandamium.db:mail selected.entry.mail_id
data modify storage pandamium:temp entries set from storage pandamium.db:mail selected.entry.receivers
scoreboard players set <sent_amount> variable 0
data modify storage pandamium:temp receivers_display_names set value []
execute if data storage pandamium:temp entries[0] run function pandamium:impl/database/mail/modify/send/loop with storage pandamium:templates macro.mail_id

# notify sender if online
execute store result score <id> variable run data get storage pandamium.db:mail selected.entry.sender.id
execute as @a[predicate=pandamium:matches_id,limit=1] run function pandamium:impl/database/mail/modify/send/as_sender_if_online

return run scoreboard players get <sent_amount> variable
