# load mail
execute store result score <mail_id> variable store result storage pandamium:templates macro.mail_id.mail_id int 1 run data get storage pandamium.db:click_events selected.entry.data.mail_id
function pandamium:utils/database/mail/load/from_mail_id with storage pandamium:templates macro.mail_id

# get held item
execute if data storage pandamium.db:mail selected.entry.data.items[4] run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" You have already used all 5 attachment slots for this mail!","color":"red"}]
execute unless predicate pandamium:holding_anything run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" You must be holding an item to attach it to a mail!","color":"red"}]

execute in pandamium:staff_world run item replace block 5 0 0 container.0 with air
execute in pandamium:staff_world run item replace block 5 0 0 container.0 from entity @s weapon.mainhand
execute in pandamium:staff_world store success score <mainhand> variable if data block 5 0 0 item
execute in pandamium:staff_world if score <mainhand> variable matches 0 run item replace block 5 0 0 container.0 from entity @s weapon.offhand
execute in pandamium:staff_world run function pandamium:utils/database/mail/modify/attach_item {from:"block 5 0 0 item"}

execute if score <mainhand> variable matches 1 run item replace entity @s weapon.mainhand with air
execute if score <mainhand> variable matches 0 run item replace entity @s weapon.offhand with air

# save as draft
function pandamium:utils/database/mail/modify/save_as_draft

# reprint menu
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id
function pandamium:triggers/mail/expire_mail_click_events with storage pandamium:templates macro.id
function pandamium:triggers/mail/print_preparation_menu

# save changes
function pandamium:utils/database/mail/save
