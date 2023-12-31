execute unless data storage pandamium.db:mail selected.entry{sent:0b} run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" An error occurred while trying to print a menu!","color":"red"}]

execute store result storage pandamium:templates macro.id.id int 1 run data get storage pandamium.db:mail selected.entry.receivers[0].id
function pandamium:utils/get/display_name/from_id with storage pandamium:templates macro.id
data modify storage pandamium:temp receiver_display_name set from storage pandamium:temp display_name
execute if data storage pandamium.db:mail selected.entry.receivers[1] run data modify storage pandamium:temp receiver_display_name set value '">>multiple players<<"'

data modify storage pandamium:temp sender_display_name set value '"You"'
execute if data storage pandamium.db:mail selected.entry.sender{type:"server"} run data modify storage pandamium:temp sender_display_name set value '"Server"'
execute if data storage pandamium.db:mail selected.entry.sender{type:"staff"} run data modify storage pandamium:temp sender_display_name set value '"The Staff Team"'

tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Mail","bold":true}," ========"]

tellraw @s {"text":"Preparing to Send Mail:\n","color":"aqua","bold":true}

tellraw @s ["",{"text":"Title: ","color":"gray"},{"storage":"pandamium:temp","nbt":"display_title","interpret":true,"underlined":true}," ",{"text":"\nMessage:\n","color":"gray"},{"storage":"pandamium.db:mail","nbt":"selected.entry.data.message","interpret":true},{"text":"\nTo: ","color":"gray"},[{"text":"","color":"aqua"},{"storage":"pandamium:temp","nbt":"receiver_display_name","interpret":true}],{"text":"\nFrom: ","color":"gray"},[{"text":"","color":"aqua"},{"storage":"pandamium:temp","nbt":"sender_display_name","interpret":true}]]

data modify storage pandamium:temp modification_buttons set value []
execute if score @s staff_rank matches 5.. run function pandamium:utils/database/click_events/load_new
execute if score @s staff_rank matches 5.. run function pandamium:utils/database/click_events/modify/set_owner/from_self
execute if score @s staff_rank matches 5.. run function pandamium:utils/database/click_events/modify/set_trigger {trigger: "mail"}
execute if score @s staff_rank matches 5.. run data modify storage pandamium.db:click_events selected.entry.data.type set value "send_as_server"
execute if score @s staff_rank matches 5.. run execute store result storage pandamium.db:click_events selected.entry.data.mail_id int 1 run scoreboard players get <mail_id> variable
execute if score @s staff_rank matches 5.. run data modify storage pandamium:temp send_as_server_click_event_root set from storage pandamium.db:click_events selected.entry.click_event_root
execute if score @s staff_rank matches 5.. run function pandamium:utils/database/click_events/save
execute if score @s staff_rank matches 5.. run data modify storage pandamium:temp modification_buttons append value '[{"storage":"pandamium:temp","nbt":"send_as_server_click_event_root","interpret":true},{"text":"[Send as Server]","color":"#FF0000","hoverEvent":{"action":"show_text","contents":[{"text":"Click to set sender type to ","color":"#FF0000"},{"text":"server","bold":true}]}}]'

execute if score @s staff_rank matches 2.. run function pandamium:utils/database/click_events/load_new
execute if score @s staff_rank matches 2.. run function pandamium:utils/database/click_events/modify/set_owner/from_self
execute if score @s staff_rank matches 2.. run function pandamium:utils/database/click_events/modify/set_trigger {trigger: "mail"}
execute if score @s staff_rank matches 2.. run data modify storage pandamium.db:click_events selected.entry.data.type set value "send_as_staff"
execute if score @s staff_rank matches 2.. run execute store result storage pandamium.db:click_events selected.entry.data.mail_id int 1 run scoreboard players get <mail_id> variable
execute if score @s staff_rank matches 2.. run data modify storage pandamium:temp send_as_staff_click_event_root set from storage pandamium.db:click_events selected.entry.click_event_root
execute if score @s staff_rank matches 2.. run function pandamium:utils/database/click_events/save
execute if score @s staff_rank matches 2.. run data modify storage pandamium:temp modification_buttons append value '[{"storage":"pandamium:temp","nbt":"send_as_staff_click_event_root","interpret":true},{"text":"[Send as Staff]","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Click to set sender type to ","color":"yellow"},{"text":"staff","bold":true}]}}]'

tellraw @s ["",{"text":"\nModifications: ","color":"aqua","bold":true},"\n• ",{"storage":"pandamium:temp","nbt":"modification_buttons[]","interpret":true,"separator":"\n• "}]

function pandamium:utils/database/click_events/load_new
function pandamium:utils/database/click_events/modify/set_owner/from_self
function pandamium:utils/database/click_events/modify/set_trigger {trigger: "mail"}
data modify storage pandamium.db:click_events selected.entry.data.type set value "confirm_send"
execute store result storage pandamium.db:click_events selected.entry.data.mail_id int 1 run scoreboard players get <mail_id> variable
data modify storage pandamium:temp confirm_send_click_event_root set from storage pandamium.db:click_events selected.entry.click_event_root
function pandamium:utils/database/click_events/save

tellraw @s ["",{"text":"\nConfirm Send: ","color":"aqua","bold":true},[{"storage":"pandamium:temp","nbt":"confirm_send_click_event_root","interpret":true},{"text":"[Confirm]","color":"dark_green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to ","color":"dark_green"},{"text":"confirm","bold":true}," that the above\ndetails about your message are\ncorrect and send it to ",{"storage":"pandamium:temp","nbt":"receiver_display_name","interpret":true}]}}]]

tellraw @s {"text":"======================","color":"aqua"}
