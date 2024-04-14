execute unless data storage pandamium.db:mail selected.entry run return fail
execute if data storage pandamium.db:mail selected.entry{sent:1b} run return fail
execute unless data storage pandamium.db:mail selected.entry{draft:1b} run return fail
execute if data storage pandamium.db:mail selected.entry.data.items[0] run return fail

# remove "saved as draft"
data modify storage pandamium.db:mail selected.entry.draft set value 0b

## Sender
# load from id
data remove storage pandamium.db.players:io selected
execute if data storage pandamium.db:mail selected.entry.sender.id run function pandamium:utils/database/players/load/from_id with storage pandamium.db:mail selected.entry.sender
execute unless data storage pandamium.db.players:io selected run return fail

# remove from drafts
function pandamium:impl/database/mail/modify/delete_draft/remove_from_drafts with storage pandamium.db:mail selected.entry
function pandamium:utils/database/players/save

# modify cached value
execute store result score <id> variable run data get storage pandamium.db:mail selected.entry.sender.id
scoreboard players remove @a[predicate=pandamium:matches_id,limit=1] mail_data.drafts 1

return 1
