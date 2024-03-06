# load mail
execute store result score <mail_id> variable store result storage pandamium:templates macro.mail_id.mail_id int 1 run data get storage pandamium.db:click_events selected.entry.data.mail_id
function pandamium:utils/database/mail/load/from_mail_id with storage pandamium:templates macro.mail_id

execute unless data storage pandamium.db:mail selected.entry.data.items[0] run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" There are no items attached to this mail!","color":"red"}]

execute store result score <attached_items> variable run data get storage pandamium.db:mail selected.entry.data.items
function pandamium:utils/count_filled_inventory_slots
execute if score <empty_inventory_slots> variable < <attached_items> variable run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" You do not have enough space in your inventory to take the attached items from this mail!","color":"red"}]

execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id
function pandamium:triggers/mail/expire_mail_click_events with storage pandamium:templates macro.id

# give items
function pandamium:utils/database/stored_items/load/from_stored_item_id with storage pandamium.db:mail selected.entry.data.items[0]
execute store result score <taken> variable run data get storage pandamium.db:mail selected.entry.data.items[0].taken
execute unless score <taken> variable matches 1 run function pandamium:utils/database/stored_items/modify/get_item/give_to_self
function pandamium:utils/database/stored_items/recycle

function pandamium:utils/database/stored_items/load/from_stored_item_id with storage pandamium.db:mail selected.entry.data.items[1]
execute store result score <taken> variable run data get storage pandamium.db:mail selected.entry.data.items[0].taken
execute unless score <taken> variable matches 1 run function pandamium:utils/database/stored_items/modify/get_item/give_to_self
function pandamium:utils/database/stored_items/recycle

function pandamium:utils/database/stored_items/load/from_stored_item_id with storage pandamium.db:mail selected.entry.data.items[2]
execute store result score <taken> variable run data get storage pandamium.db:mail selected.entry.data.items[0].taken
execute unless score <taken> variable matches 1 run function pandamium:utils/database/stored_items/modify/get_item/give_to_self
function pandamium:utils/database/stored_items/recycle

function pandamium:utils/database/stored_items/load/from_stored_item_id with storage pandamium.db:mail selected.entry.data.items[3]
execute store result score <taken> variable run data get storage pandamium.db:mail selected.entry.data.items[0].taken
execute unless score <taken> variable matches 1 run function pandamium:utils/database/stored_items/modify/get_item/give_to_self
function pandamium:utils/database/stored_items/recycle

function pandamium:utils/database/stored_items/load/from_stored_item_id with storage pandamium.db:mail selected.entry.data.items[4]
execute store result score <taken> variable run data get storage pandamium.db:mail selected.entry.data.items[0].taken
execute unless score <taken> variable matches 1 run function pandamium:utils/database/stored_items/modify/get_item/give_to_self
function pandamium:utils/database/stored_items/recycle

data modify storage pandamium.db:mail selected.entry.data.items[].taken set value 1b
data modify storage pandamium.db:mail selected.entry{ephemeral:1b}.data.completed_ephemeral set value 1b

execute store success score <mail_is_ephemeral> variable if data storage pandamium.db:mail selected.entry{ephemeral:1b}
execute if score <mail_is_ephemeral> variable matches 0 run function pandamium:triggers/mail/print_received_mail_menu
execute if score <mail_is_ephemeral> variable matches 1 run tellraw @s [{"text":"[Mail]","color":"dark_green"},[{"text":" Taken attachments from mail! Ephemeral mail was removed from your inbox.","color":"green"}]]
execute if score <mail_is_ephemeral> variable matches 1 run function pandamium:utils/database/players/load/self
execute if score <mail_is_ephemeral> variable matches 1 run function pandamium:triggers/mail/remove_mail_from_inbox_of_selected_player with storage pandamium.db:mail selected.entry
execute if score <mail_is_ephemeral> variable matches 1 run function pandamium:utils/database/players/save

function pandamium:utils/database/mail/save
