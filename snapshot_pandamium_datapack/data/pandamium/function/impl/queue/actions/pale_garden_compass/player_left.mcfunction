# if the item was already given, don't do anything else
execute if data storage pandamium:queue selected.entry{given_back:1b} run return 0

# otherwise, mail the item back to them
function pandamium:utils/database/mail/load_new
function pandamium:utils/database/mail/modify/set_sender_type/server
data modify storage pandamium:queue selected.entry.id set from storage pandamium:queue selected.entry.user_id
function pandamium:utils/database/mail/modify/add_receiver_from_id with storage pandamium:queue selected.entry
data modify storage pandamium.db.mail:io selected.entry.data.title set value '"Returned Item"'
data modify storage pandamium.db.mail:io selected.entry.ephemeral set value 1b
function pandamium:utils/database/mail/modify/attach_item with storage pandamium:queue selected.entry
function pandamium:utils/database/mail/modify/send
function pandamium:utils/database/mail/save
