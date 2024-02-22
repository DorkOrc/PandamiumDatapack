# load click event
scoreboard players operation <click_event_id> variable = @s mail
scoreboard players operation <click_event_id> variable *= #-1 constant
execute store result storage pandamium:templates macro.click_event_id.click_event_id int 1 run scoreboard players remove <click_event_id> variable 2146000000
function pandamium:utils/database/click_events/load/from_click_event_id with storage pandamium:templates macro.click_event_id

# validate
execute if data storage pandamium.db:click_events selected.entry{expired:1b} run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" That option has expired!","color":"red"}]

execute store result score <owner_id> variable run data get storage pandamium.db:click_events selected.entry.owner.id

scoreboard players set <valid_click_event> variable 0
execute if score <owner_id> variable = @s id if data storage pandamium.db:click_events selected.entry{trigger:"mail"} run scoreboard players set <valid_click_event> variable 1
execute if score <valid_click_event> variable matches 0 run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

# types
execute if data storage pandamium.db:click_events selected.entry.data{type:"confirm_send"} run return run function pandamium:triggers/mail/click_events/confirm_send/main
execute if data storage pandamium.db:click_events selected.entry.data{type:"set_sender_type_to_staff"} run return run function pandamium:triggers/mail/click_events/set_sender_type_to_staff/main
execute if data storage pandamium.db:click_events selected.entry.data{type:"set_sender_type_to_server"} run return run function pandamium:triggers/mail/click_events/set_sender_type_to_server/main
execute if data storage pandamium.db:click_events selected.entry.data{type:"set_sender_type_to_player"} run return run function pandamium:triggers/mail/click_events/set_sender_type_to_player/main
execute if data storage pandamium.db:click_events selected.entry.data{type:"add_item"} run return run function pandamium:triggers/mail/click_events/add_item/main
execute if data storage pandamium.db:click_events selected.entry.data{type:"remove_all_items"} run return run function pandamium:triggers/mail/click_events/remove_all_items/main
execute if data storage pandamium.db:click_events selected.entry.data{type:"take_incoming_items"} run return run function pandamium:triggers/mail/click_events/take_incoming_items/main
execute if data storage pandamium.db:click_events selected.entry.data{type:"save_as_draft"} run return run function pandamium:triggers/mail/click_events/save_as_draft/main
execute if data storage pandamium.db:click_events selected.entry.data{type:"delete_draft"} run return run function pandamium:triggers/mail/click_events/delete_draft/main
execute if data storage pandamium.db:click_events selected.entry.data{type:"set_ephemeral"} run return run function pandamium:triggers/mail/click_events/set_ephemeral/main
execute if data storage pandamium.db:click_events selected.entry.data{type:"delete_ephemeral_mail"} run return run function pandamium:triggers/mail/click_events/delete_ephemeral_mail/main

tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
