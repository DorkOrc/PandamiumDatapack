# load mail
execute store result score <mail_id> variable store result storage pandamium:templates macro.mail_id.mail_id int 1 run data get storage pandamium.db:click_events selected.entry.data.mail_id
function pandamium:utils/database/mail/load/from_mail_id with storage pandamium:templates macro.mail_id

execute unless data storage pandamium.db:mail selected.entry.data.items[0] run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" You have not attached any items to this mail!","color":"red"}]

execute store result score <attached_items> variable run data get storage pandamium.db:mail selected.entry.data.items
function pandamium:utils/count_filled_inventory_slots
execute if score <empty_inventory_slots> variable < <attached_items> variable run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" You do not have enough space in your inventory to remove the items from this mail!","color":"red"}]

data modify storage pandamium.db:mail selected.entry.data.items[0].Slot set value 0b
data modify storage pandamium.db:mail selected.entry.data.items[1].Slot set value 1b
data modify storage pandamium.db:mail selected.entry.data.items[2].Slot set value 2b
data modify storage pandamium.db:mail selected.entry.data.items[3].Slot set value 3b
data modify storage pandamium.db:mail selected.entry.data.items[4].Slot set value 4b
execute in pandamium:staff_world run data remove block 2 0 0 Items
execute in pandamium:staff_world run data modify block 2 0 0 Items set from storage pandamium.db:mail selected.entry.data.items
execute in pandamium:staff_world run loot give @s mine 2 0 0 air{drop_contents:1b}
data remove storage pandamium.db:mail selected.entry.data.items

execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id
function pandamium:triggers/mail/expire_mail_click_events with storage pandamium:templates macro.id
function pandamium:triggers/mail/print_preparation_menu

function pandamium:utils/database/mail/save
