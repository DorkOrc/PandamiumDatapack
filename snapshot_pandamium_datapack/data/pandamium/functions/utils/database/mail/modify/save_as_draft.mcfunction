execute unless data storage pandamium.db:mail selected.entry run return fail
execute if data storage pandamium.db:mail selected.entry{sent:1b} run return fail
execute if data storage pandamium.db:mail selected.entry{draft:1b} run return fail

# set "saved as draft"
data modify storage pandamium.db:mail selected.entry.draft set value 1b

## Sender
# load from id
data remove storage pandamium.db.players:io selected
execute if data storage pandamium.db:mail selected.entry.sender.id run function pandamium:utils/database/players/load/from_id with storage pandamium.db:mail selected.entry.sender
execute unless data storage pandamium.db.players:io selected run return fail

# add to drafts box
data modify storage pandamium.db.players:io selected.entry.data.mail.drafts append value {mail_id:0}
data modify storage pandamium.db.players:io selected.entry.data.mail.drafts[-1].mail_id set from storage pandamium.db:mail selected.entry.mail_id
function pandamium:utils/database/players/save

# modify cached value
execute store result score <id> variable run data get storage pandamium.db:mail selected.entry.sender.id
scoreboard players add @a[predicate=pandamium:matches_id,limit=1] mail_data.drafts 1

return 1
