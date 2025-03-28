# arguments: index

# check if the message has changed
$execute store success score <message_changed> variable run data modify storage pandamium.db.mail:data entries[$(index)].data.message set from storage pandamium.db.mail:io selected.entry.data.message
execute if score <message_changed> variable matches 1 run function pandamium:impl/database/mail/save/set_preview
execute if score <message_changed> variable matches 0 unless data storage pandamium.db.mail:io selected.entry.data.message run function pandamium:impl/database/mail/save/remove_preview

# replace from selected
$data modify storage pandamium.db.mail:data entries[$(index)] set from storage pandamium.db.mail:io selected.entry
