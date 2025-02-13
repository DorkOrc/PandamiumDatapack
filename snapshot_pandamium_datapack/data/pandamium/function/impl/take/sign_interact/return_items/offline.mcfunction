# transfer items into a bundle
item replace block 5 0 0 contents with minecraft:bundle
data modify block 5 0 0 item.components.minecraft:bundle_contents append from block 2 0 0 Items[]
data modify block 5 0 0 item.components.minecraft:bundle_contents append from block 2 1 0 Items[]

# mail that bundle to the player
function pandamium:utils/database/mail/load_new
function pandamium:utils/database/mail/modify/set_automated
function pandamium:utils/database/mail/modify/set_ephemeral
function pandamium:utils/database/mail/modify/set_sender_type/staff
function pandamium:utils/database/mail/modify/add_receiver_from_id with storage pandamium:local functions."pandamium:impl/take/sign_interact/*"

# set title
data modify storage pandamium.db.mail:io selected.entry.data.title set value "Returned Items"

# set message
data modify storage pandamium.db.mail:io selected.entry.data.message set value "These items were temporarily taken from your inventory or ender chest by a member of our staff team.\n\nWhen we tried to return them to you, you were either offline or did not have enough room to receive the items, so we've mailed them to you instead. 😊"

# set preview
data modify storage pandamium.db.mail:io selected.entry.data.preview set string storage pandamium.db.mail:io selected.entry.data.message 0 30

# add item
execute in pandamium:staff_world run function pandamium:utils/database/mail/modify/attach_item {from:'block 5 0 0 item'}

function pandamium:utils/database/mail/modify/send
function pandamium:utils/database/mail/save
