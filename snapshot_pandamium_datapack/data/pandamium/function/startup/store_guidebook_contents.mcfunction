#> WHEN UPDATING:
# - Increment version index; 
# - Set a suitable version name
# - Set the current date (year,month,day)
data modify storage pandamium:global guidebook.version_index set value 116
data modify storage pandamium:global guidebook.version_name set value '2.4.9'
data modify storage pandamium:global guidebook.date_updated set value [2025,2,2]
# ^^^
# - Update the set_guidebook item modifier to reflect the above changes
# then check that they're formatted correctly on the last page.

# store datetime text
data modify storage pandamium:local functions."pandamium:startup/store_guidebook_contents".args set from storage pandamium:global guidebook.date_updated
function pandamium:utils/datetime/get_datetime_text with storage pandamium:local functions."pandamium:startup/store_guidebook_contents"
data modify storage pandamium:global guidebook.date_updated set from storage pandamium:temp datetime_text.date

# store version index as score
scoreboard players operation <previous_guidebook_version_index> variable = <guidebook_version_index> global
execute store result score <guidebook_version_index> global run data get storage pandamium:global guidebook.version_index
execute if score <guidebook_version_index> global <= <previous_guidebook_version_index> variable run return 0

## mail some players the new guidebook
function pandamium:utils/database/mail/load_new
function pandamium:utils/database/mail/modify/set_automated
function pandamium:utils/database/mail/modify/set_sender_type/server
function pandamium:utils/database/mail/modify/add_receiver_from_id {id: 532}
function pandamium:utils/database/mail/modify/add_receiver_from_id {id: 4666}
function pandamium:utils/database/mail/modify/add_receiver_from_id {id: 326}

# set title
data modify storage pandamium:text input set value ["Guidebook "]
data modify storage pandamium:text input append from storage pandamium:global guidebook.version_name
function pandamium:utils/text/flatten
data modify storage pandamium.db.mail:io selected.entry.data.title set from storage pandamium:text output

# set message
data modify storage pandamium.db.mail:io selected.entry.data.message set value {text:"New guidebook version: ",extra:[{text:"",bold:true}]}
data modify storage pandamium.db.mail:io selected.entry.data.message.extra[0].text set from storage pandamium:global guidebook.version_name

# set preview
data modify storage pandamium:text input set from storage pandamium.db.mail:io selected.entry.data.message
function pandamium:utils/text/flatten
data modify storage pandamium.db.mail:io selected.entry.data.preview set from storage pandamium:text output
data modify storage pandamium.db.mail:io selected.entry.data.full_preview set value 1b

# add item
execute in pandamium:staff_world run loot replace block 5 0 0 container.0 loot pandamium:items/custom/guidebook
execute in pandamium:staff_world run function pandamium:utils/database/mail/modify/attach_item {from:'block 5 0 0 item'}
data modify storage pandamium.db.mail:io selected.entry.data.items[-1].private.id set value 532
execute in pandamium:staff_world run function pandamium:utils/database/mail/modify/attach_item {from:'block 5 0 0 item'}
data modify storage pandamium.db.mail:io selected.entry.data.items[-1].private.id set value 4666
execute in pandamium:staff_world run function pandamium:utils/database/mail/modify/attach_item {from:'block 5 0 0 item'}
data modify storage pandamium.db.mail:io selected.entry.data.items[-1].private.id set value 326

function pandamium:utils/database/mail/modify/send
function pandamium:utils/database/mail/save

## set guidebook name in dictionary
execute in pandamium:staff_world run data modify storage pandamium:dictionary guidebook_item_name set from block 5 0 0 item.components.minecraft:item_name
