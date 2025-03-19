# remove preview if there is no message
execute unless data storage pandamium.db.mail:io selected.entry.data.message run return run function pandamium:impl/database/mail/save/remove_preview

# flatten message
data modify storage pandamium:text input set from storage pandamium.db.mail:io selected.entry.data.message
function pandamium:utils/text/flatten

# trim to 30 characteres if longer
execute store result score <message_length> variable run data get storage pandamium:text output

execute if score <message_length> variable matches 0..30 run data modify storage pandamium:text input set from storage pandamium:text output
execute if score <message_length> variable matches 0..30 run data modify storage pandamium.db.mail:io selected.entry.data.full_preview set value 1b

execute if score <message_length> variable matches 31.. run data modify storage pandamium:text input set string storage pandamium:text output 0 30
execute if score <message_length> variable matches 31.. run data remove storage pandamium.db.mail:io selected.entry.data.full_preview

# replace newlines with spaces
function pandamium:utils/text/replace {args:["\n"," "]}

# save
data modify storage pandamium.db.mail:io selected.entry.data.preview set from storage pandamium:text output
