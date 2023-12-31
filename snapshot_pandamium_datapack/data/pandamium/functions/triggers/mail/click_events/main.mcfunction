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

tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
