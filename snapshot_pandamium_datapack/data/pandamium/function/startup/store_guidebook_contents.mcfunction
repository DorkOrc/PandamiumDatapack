#> WHEN UPDATING:
# - Increment version index; 
# - Set a suitable version name
# - Set the current date (DD/MM/YYY)
data modify storage pandamium:global guidebook.version_index set value 112
data modify storage pandamium:global guidebook.version_name set value '2.4.5'
data modify storage pandamium:global guidebook.date_updated set value '15/08/2024'
# ^^^
# - Update the set_guidebook item modifier to reflect the above changes
# then check that they're formatted correctly on the last page.

# book item
data remove storage pandamium:global guidebook.data

# store version index as score
scoreboard players operation <previous_guidebook_version_index> variable = <guidebook_version_index> global
execute store result score <guidebook_version_index> global run data get storage pandamium:global guidebook.version_index
execute if score <guidebook_version_index> global <= <previous_guidebook_version_index> variable run return 0

## mail DiamondMon the new guidebook
function pandamium:utils/database/mail/load_new
function pandamium:utils/database/mail/modify/set_sender_type/server
function pandamium:utils/database/mail/modify/add_receiver_from_id {id: 4666}
function pandamium:utils/database/mail/modify/add_receiver_from_id {id: 532}

# set title
execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '["Guidebook ",{"storage":"pandamium:global","nbt":"guidebook.version_name"}]'
execute in pandamium:staff_world run data modify storage pandamium.db.mail:io selected.entry.data.title set from block 3 0 0 front_text.messages[0]

# set message
execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '["New guidebook version: ",{"storage":"pandamium:global","nbt":"guidebook.version_name","bold":true}]'
execute in pandamium:staff_world run data modify storage pandamium.db.mail:io selected.entry.data.message set from block 3 0 0 front_text.messages[0]

# set preview
data modify storage pandamium.db.mail:io selected.entry.data.preview set value '"New guidebook v"'

# add item
execute in pandamium:staff_world run loot replace block 5 0 0 container.0 loot pandamium:items/custom/guidebook
execute in pandamium:staff_world run function pandamium:utils/database/mail/modify/attach_item with block 5 0 0 {}
data modify storage pandamium.db.mail:io selected.entry.data.items[-1].private.id set value 4666

function pandamium:utils/database/mail/modify/send
function pandamium:utils/database/mail/save

## set guidebook name in dictionary
execute in pandamium:staff_world run data modify storage pandamium:dictionary guidebook_item_name set from block 5 0 0 item.components.minecraft:item_name
