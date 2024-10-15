execute unless entity @s[type=player] run return 0

execute if items entity @s armor.head * if predicate pandamium:player/can_pick_up_any_item in pandamium:staff_world run function pandamium:impl/unequip/head

execute unless items entity @s armor.head * run return 0

# if inventory is full, mail it to the player
function pandamium:utils/database/mail/load_new
function pandamium:utils/database/mail/modify/set_sender_type/server
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id
function pandamium:utils/database/mail/modify/add_receiver_from_id with storage pandamium:templates macro.id
data modify storage pandamium.db.mail:io selected.entry.data.title set value '"Inventory Was Full"'
data modify storage pandamium.db.mail:io selected.entry.data.message set value '"Your inventory was too full to unequip the item that you were wearing in your head slot.\\n\\nThe item has been safely moved here for you to reclaim later."'
data modify storage pandamium.db.mail:io selected.entry.data.preview set value '"Your inventory "'
data modify storage pandamium.db.mail:io selected.entry.ephemeral set value 1b

execute if items entity @s armor.head * in pandamium:staff_world run item replace block 5 0 0 container.0 from entity @s armor.head
execute if items entity @s armor.head * in pandamium:staff_world run function pandamium:utils/database/mail/modify/attach_item with block 5 0 0 {}
item replace entity @s armor.head with air

function pandamium:utils/database/mail/modify/send
function pandamium:utils/database/mail/save

return 1
