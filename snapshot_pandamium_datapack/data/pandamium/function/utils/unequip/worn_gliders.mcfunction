execute if items entity @s armor.feet *[glider] if predicate pandamium:player/can_pick_up_any_item run function pandamium:impl/unequip/feet
execute if items entity @s armor.legs *[glider] if predicate pandamium:player/can_pick_up_any_item run function pandamium:impl/unequip/legs
execute if items entity @s armor.chest *[glider] if predicate pandamium:player/can_pick_up_any_item run function pandamium:impl/unequip/chest
execute if items entity @s armor.head *[glider] if predicate pandamium:player/can_pick_up_any_item run function pandamium:impl/unequip/head

execute unless items entity @s armor.* *[glider] run return 0

# if inventory is full, mail it to the player
function pandamium:utils/database/mail/load_new
function pandamium:utils/database/mail/modify/set_sender_type/server
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id
function pandamium:utils/database/mail/modify/add_receiver_from_id with storage pandamium:templates macro.id
data modify storage pandamium.db.mail:io selected.entry.data.title set value '"Inventory Too Full"'
data modify storage pandamium.db.mail:io selected.entry.data.message set value '"Inventory was too full to unequip item. Mailed item to you instead."'
data modify storage pandamium.db.mail:io selected.entry.data.preview set value '"Inventory was t"'
data modify storage pandamium.db.mail:io selected.entry.ephemeral set value 1b

execute if items entity @s armor.feet *[glider] in pandamium:staff_world run item replace block 5 0 0 container.0 from entity @s armor.feet
execute if items entity @s armor.feet *[glider] in pandamium:staff_world run function pandamium:utils/database/mail/modify/attach_item with block 5 0 0 {}
execute if items entity @s armor.legs *[glider] in pandamium:staff_world run item replace block 5 0 0 container.0 from entity @s armor.legs
execute if items entity @s armor.legs *[glider] in pandamium:staff_world run function pandamium:utils/database/mail/modify/attach_item with block 5 0 0 {}
execute if items entity @s armor.chest *[glider] in pandamium:staff_world run item replace block 5 0 0 container.0 from entity @s armor.chest
execute if items entity @s armor.chest *[glider] in pandamium:staff_world run function pandamium:utils/database/mail/modify/attach_item with block 5 0 0 {}
execute if items entity @s armor.head *[glider] in pandamium:staff_world run item replace block 5 0 0 container.0 from entity @s armor.head
execute if items entity @s armor.head *[glider] in pandamium:staff_world run function pandamium:utils/database/mail/modify/attach_item with block 5 0 0 {}

function pandamium:utils/database/mail/modify/send
function pandamium:utils/database/mail/save

execute if items entity @s armor.feet *[glider] run item replace entity @s armor.feet with air
execute if items entity @s armor.legs *[glider] run item replace entity @s armor.legs with air
execute if items entity @s armor.chest *[glider] run item replace entity @s armor.chest with air
execute if items entity @s armor.head *[glider] run item replace entity @s armor.head with air

return 1
