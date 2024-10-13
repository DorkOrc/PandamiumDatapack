execute unless data storage pandamium.db.mail:io selected.entry run return fail
execute unless data storage pandamium.db.mail:io selected.entry.receivers[0] unless data storage pandamium.db.mail:io selected.entry{receiver_type:"news_feed"} unless data storage pandamium.db.mail:io selected.entry{receiver_type:"staff"} run return fail
execute if data storage pandamium.db.mail:io selected.entry{sent:1b} run return fail

data modify storage pandamium:templates macro.mail_id.mail_id set from storage pandamium.db.mail:io selected.entry.mail_id

# set sent
data modify storage pandamium.db.mail:io selected.entry.sent set value 1b

# set time
execute store result storage pandamium.db.mail:io selected.entry.gametime int 1 run time query gametime
execute store result storage pandamium.db.mail:io selected.entry.hour_id int 1 run scoreboard players get <hour_id> global

## Sender
# load from id
data remove storage pandamium.db.players:io selected
execute if data storage pandamium.db.mail:io selected.entry.sender.id run function pandamium:utils/database/players/load/from_id with storage pandamium.db.mail:io selected.entry.sender

# get display name
execute store success score <sender_is_player> variable unless data storage pandamium.db.mail:io selected.entry.sender.type
execute if data storage pandamium.db.mail:io selected.entry.sender{type:"player"} run scoreboard players set <sender_is_player> variable 1

data modify storage pandamium:temp sender_display_name set value '"Unknown"'
execute if score <sender_is_player> variable matches 0 if data storage pandamium.db.mail:io selected.entry.sender{type:"server"} run data modify storage pandamium:temp sender_display_name set value '"Server"'
execute if score <sender_is_player> variable matches 0 if data storage pandamium.db.mail:io selected.entry.sender{type:"staff"} run data modify storage pandamium:temp sender_display_name set value '"The Staff Team"'
execute if score <sender_is_player> variable matches 1 run function pandamium:utils/get/display_name/from_id with storage pandamium.db.mail:io selected.entry.sender
execute if score <sender_is_player> variable matches 1 run data modify storage pandamium:temp sender_display_name set from storage pandamium:temp display_name

# remove from drafts
execute store success score <was_draft> variable if data storage pandamium.db.mail:io selected.entry{draft:1b}
data remove storage pandamium.db.mail:io selected.entry.draft

execute if score <was_draft> variable matches 1 run function pandamium:impl/database/mail/modify/send/remove_from_drafts with storage pandamium:templates macro.mail_id

# add to outbox
execute unless data storage pandamium.db.players:io selected if data storage pandamium.db.mail:io selected.entry.sender.id run tellraw @a[scores={send_extra_debug_info=2..}] [{"text":"[Pandamium: Attempted to add mail ","color":"gray","italic":true,"hoverEvent":{"action":"show_text","contents":["Failed to load player db entry with arguments ",{"storage":"pandamium.db.mail:io","nbt":"selected.entry.sender","color":"aqua"}]}},{"storage":"pandamium.db.mail:io","nbt":"selected.entry.mail_id"}," to invalid player's outbox; Moved to server outbox instead]"]
execute unless data storage pandamium.db.players:io selected run data modify storage pandamium.db.mail:data server_outbox append value {mail_id:0}
execute unless data storage pandamium.db.players:io selected run data modify storage pandamium.db.mail:data server_outbox[-1].mail_id set from storage pandamium.db.mail:io selected.entry.mail_id
execute if data storage pandamium.db.players:io selected run data modify storage pandamium.db.players:io selected.entry.data.mail.outbox append value {mail_id:0}
execute if data storage pandamium.db.players:io selected run data modify storage pandamium.db.players:io selected.entry.data.mail.outbox[-1].mail_id set from storage pandamium.db.mail:io selected.entry.mail_id
execute if data storage pandamium.db.players:io selected run function pandamium:utils/database/players/save

## Receivers
# add to receiver inboxes (and notify if online)
data modify storage pandamium:temp entries set from storage pandamium.db.mail:io selected.entry.receivers
scoreboard players set <sent_amount> variable 0
data modify storage pandamium:temp receivers_display_names set value []
execute if data storage pandamium:temp entries[0] run function pandamium:impl/database/mail/modify/send/loop with storage pandamium:templates macro.mail_id

# add to news_feed_inbox if target is news_feed
execute if data storage pandamium.db.mail:io selected.entry{receiver_type:"news_feed"} run function pandamium:impl/database/mail/modify/send/add_to_news_feed
execute if data storage pandamium.db.mail:io selected.entry{receiver_type:"staff"} run function pandamium:impl/database/mail/modify/send/add_to_staff_inbox

# notify sender if online
execute store result score <id> variable run data get storage pandamium.db.mail:io selected.entry.sender.id
execute as @a[predicate=pandamium:matches_id,limit=1] run function pandamium:impl/database/mail/modify/send/as_sender_if_online

return run scoreboard players get <sent_amount> variable
