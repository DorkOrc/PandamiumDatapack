execute unless entity @s[type=player] run return 0

execute if items entity @s weapon.mainhand * if predicate pandamium:player/can_pick_up_any_item in pandamium:staff_world run function pandamium:impl/unequip/mainhand
execute unless items entity @s weapon.mainhand * run item replace entity @s weapon.mainhand with barrier[custom_data={pandamium:{clear:1b}},max_stack_size=1]

execute if items entity @s weapon.offhand * if predicate pandamium:player/can_pick_up_any_item in pandamium:staff_world run function pandamium:impl/unequip/offhand
execute if items entity @s armor.feet * if predicate pandamium:player/can_pick_up_any_item in pandamium:staff_world run function pandamium:impl/unequip/feet
execute if items entity @s armor.legs * if predicate pandamium:player/can_pick_up_any_item in pandamium:staff_world run function pandamium:impl/unequip/legs
execute if items entity @s armor.chest * if predicate pandamium:player/can_pick_up_any_item in pandamium:staff_world run function pandamium:impl/unequip/chest
execute if items entity @s armor.head * if predicate pandamium:player/can_pick_up_any_item in pandamium:staff_world run function pandamium:impl/unequip/head

execute if items entity @s weapon.mainhand barrier[custom_data~{pandamium:{clear:1b}}] run item replace entity @s weapon.mainhand with air
execute unless items entity @s weapon.* * unless items entity @s armor.* * run return 0

# if inventory is full, mail it to the player
function pandamium:utils/database/mail/load_new
function pandamium:utils/database/mail/modify/set_sender_type/server
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id
function pandamium:utils/database/mail/modify/add_receiver_from_id with storage pandamium:templates macro.id
data modify storage pandamium.db.mail:io selected.entry.data.title set value '"Inventory Was Full"'
data modify storage pandamium.db.mail:io selected.entry.data.message set value '"Your inventory was too full to unequip the item or items that you were wearing and holding.\\n\\nThe item or items have been safely moved here for you to reclaim later."'
data modify storage pandamium.db.mail:io selected.entry.data.preview set value '"Your inventory "'
data modify storage pandamium.db.mail:io selected.entry.ephemeral set value 1b

execute if items entity @s weapon.mainhand * in pandamium:staff_world run item replace block 5 0 0 container.0 from entity @s weapon.mainhand
execute if items entity @s weapon.mainhand * in pandamium:staff_world run function pandamium:utils/database/mail/modify/attach_item with block 5 0 0 {}
item replace entity @s weapon.mainhand with air
execute if items entity @s weapon.offhand * in pandamium:staff_world run item replace block 5 0 0 container.0 from entity @s weapon.offhand
execute if items entity @s weapon.offhand * in pandamium:staff_world run function pandamium:utils/database/mail/modify/attach_item with block 5 0 0 {}
item replace entity @s weapon.offhand with air
execute if items entity @s armor.feet * in pandamium:staff_world run item replace block 5 0 0 container.0 from entity @s armor.feet
execute if items entity @s armor.feet * in pandamium:staff_world run function pandamium:utils/database/mail/modify/attach_item with block 5 0 0 {}
item replace entity @s armor.feet with air
execute if items entity @s armor.legs * in pandamium:staff_world run item replace block 5 0 0 container.0 from entity @s armor.legs
execute if items entity @s armor.legs * in pandamium:staff_world run function pandamium:utils/database/mail/modify/attach_item with block 5 0 0 {}
item replace entity @s armor.legs with air
execute if items entity @s armor.chest * in pandamium:staff_world run item replace block 5 0 0 container.0 from entity @s armor.chest
execute if items entity @s armor.chest * in pandamium:staff_world run function pandamium:utils/database/mail/modify/attach_item with block 5 0 0 {}
item replace entity @s armor.chest with air
execute if items entity @s armor.head * in pandamium:staff_world run item replace block 5 0 0 container.0 from entity @s armor.head
execute if items entity @s armor.head * in pandamium:staff_world run function pandamium:utils/database/mail/modify/attach_item with block 5 0 0 {}
item replace entity @s armor.head with air

function pandamium:utils/database/mail/modify/send
function pandamium:utils/database/mail/save

return 1
