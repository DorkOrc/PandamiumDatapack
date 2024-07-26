execute if predicate pandamium:player/can_pick_up_any_item run return run function pandamium:utils/unequip/feet

# if inventory is full, mail it to the player
function pandamium:utils/database/mail/load_new
function pandamium:utils/database/mail/modify/set_sender_type/server
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id
function pandamium:utils/database/mail/modify/add_receiver_from_id with storage pandamium:templates macro.id
data modify storage pandamium.db.mail:io selected.entry.data.title set value '"Inventory Too Full"'
data modify storage pandamium.db.mail:io selected.entry.data.message set value '"Inventory was too full to unequip item. Mailed item to you instead."'
data modify storage pandamium.db.mail:io selected.entry.data.preview set value '"Inventory was t"'
data modify storage pandamium.db.mail:io selected.entry.ephemeral set value 1b

execute in pandamium:staff_world run item replace block 5 0 0 container.0 from entity @s armor.feet
execute in pandamium:staff_world run function pandamium:utils/database/mail/modify/attach_item {from:"block 5 0 0 item"}

function pandamium:utils/database/mail/modify/send
function pandamium:utils/database/mail/save

item replace entity @s armor.feet with air
