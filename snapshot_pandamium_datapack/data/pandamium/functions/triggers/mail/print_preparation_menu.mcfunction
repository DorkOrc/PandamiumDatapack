execute unless data storage pandamium.db:mail selected.entry{sent:0b} run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" An error occurred while trying to print a menu!","color":"red"}]

execute store result storage pandamium:templates macro.id.id int 1 run data get storage pandamium.db:mail selected.entry.receivers[0].id
function pandamium:utils/get/display_name/from_id with storage pandamium:templates macro.id
data modify storage pandamium:temp receiver_display_name set from storage pandamium:temp display_name
execute if data storage pandamium.db:mail selected.entry.receivers[1] run data modify storage pandamium:temp receiver_display_name set value '">>multiple players<<"'

data modify storage pandamium:temp sender_display_name set value '"You"'
execute if data storage pandamium.db:mail selected.entry.sender{type:"server"} run data modify storage pandamium:temp sender_display_name set value '"Server"'
execute if data storage pandamium.db:mail selected.entry.sender{type:"staff"} run data modify storage pandamium:temp sender_display_name set value '"The Staff Team"'

tellraw @s {"storage":"pandamium:temp","nbt":"menu_header","interpret":true}

tellraw @s {"text":"Preparing to Send Mail:\n","color":"aqua","bold":true}

tellraw @s ["",{"text":"Title: ","color":"gray"},{"storage":"pandamium:temp","nbt":"display_title","interpret":true,"underlined":true}," ",{"text":"\nMessage:\n","color":"gray"},{"storage":"pandamium.db:mail","nbt":"selected.entry.data.message","interpret":true},{"text":"\nTo: ","color":"gray"},[{"text":"","color":"aqua"},{"storage":"pandamium:temp","nbt":"receiver_display_name","interpret":true}],{"text":"\nFrom: ","color":"gray"},[{"text":"","color":"aqua"},{"storage":"pandamium:temp","nbt":"sender_display_name","interpret":true}]]

execute store result score <attachment_slots_filled> variable run data get storage pandamium.db:mail selected.entry.data.items
execute if score <attachment_slots_filled> variable matches 1.. run tellraw @s [{"text":"Attachments (","color":"gray"},{"score":{"name":"<attachment_slots_filled>","objective":"variable"}},"/5):\n• ",[{"text":"","color":"aqua"},{"storage":"pandamium.db:mail","nbt":"selected.entry.data.items[].name","interpret":true,"separator":{"text":"\n• ","color":"gray"}}]]

data modify storage pandamium:temp modification_buttons set value []

data modify storage pandamium:temp sender_type set value "player"
data modify storage pandamium:temp sender_type set from storage pandamium.db:mail selected.entry.sender.type

execute unless data storage pandamium:temp {sender_type:"player"} run function pandamium:utils/database/click_events/load_new
execute unless data storage pandamium:temp {sender_type:"player"} run function pandamium:utils/database/click_events/modify/set_owner/from_self
execute unless data storage pandamium:temp {sender_type:"player"} run function pandamium:utils/database/click_events/modify/set_trigger {trigger: "mail"}
execute unless data storage pandamium:temp {sender_type:"player"} run data modify storage pandamium.db:click_events selected.entry.data.type set value "set_sender_type_to_player"
execute unless data storage pandamium:temp {sender_type:"player"} run execute store result storage pandamium.db:click_events selected.entry.data.mail_id int 1 run scoreboard players get <mail_id> variable
execute unless data storage pandamium:temp {sender_type:"player"} run data modify storage pandamium:temp set_sender_type_to_player_click_event_root set from storage pandamium.db:click_events selected.entry.click_event_root
execute unless data storage pandamium:temp {sender_type:"player"} run function pandamium:utils/database/click_events/save
execute unless data storage pandamium:temp {sender_type:"player"} run data modify storage pandamium:temp modification_buttons append value '[{"storage":"pandamium:temp","nbt":"set_sender_type_to_player_click_event_root","interpret":true},{"text":"[Send as Player]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to set sender type to ","color":"aqua"},{"text":"player","bold":true}]}}]'

execute if score @s staff_rank matches 5.. unless data storage pandamium:temp {sender_type:"server"} run function pandamium:utils/database/click_events/load_new
execute if score @s staff_rank matches 5.. unless data storage pandamium:temp {sender_type:"server"} run function pandamium:utils/database/click_events/modify/set_owner/from_self
execute if score @s staff_rank matches 5.. unless data storage pandamium:temp {sender_type:"server"} run function pandamium:utils/database/click_events/modify/set_trigger {trigger: "mail"}
execute if score @s staff_rank matches 5.. unless data storage pandamium:temp {sender_type:"server"} run data modify storage pandamium.db:click_events selected.entry.data.type set value "set_sender_type_to_server"
execute if score @s staff_rank matches 5.. unless data storage pandamium:temp {sender_type:"server"} run execute store result storage pandamium.db:click_events selected.entry.data.mail_id int 1 run scoreboard players get <mail_id> variable
execute if score @s staff_rank matches 5.. unless data storage pandamium:temp {sender_type:"server"} run data modify storage pandamium:temp set_sender_type_to_server_click_event_root set from storage pandamium.db:click_events selected.entry.click_event_root
execute if score @s staff_rank matches 5.. unless data storage pandamium:temp {sender_type:"server"} run function pandamium:utils/database/click_events/save
execute if score @s staff_rank matches 5.. unless data storage pandamium:temp {sender_type:"server"} run data modify storage pandamium:temp modification_buttons append value '[{"storage":"pandamium:temp","nbt":"set_sender_type_to_server_click_event_root","interpret":true},{"text":"[Send as Server]","color":"#FF0000","hoverEvent":{"action":"show_text","contents":[{"text":"Click to set sender type to ","color":"#FF0000"},{"text":"server","bold":true}]}}]'

execute if score @s staff_rank matches 2.. unless data storage pandamium:temp {sender_type:"staff"} run function pandamium:utils/database/click_events/load_new
execute if score @s staff_rank matches 2.. unless data storage pandamium:temp {sender_type:"staff"} run function pandamium:utils/database/click_events/modify/set_owner/from_self
execute if score @s staff_rank matches 2.. unless data storage pandamium:temp {sender_type:"staff"} run function pandamium:utils/database/click_events/modify/set_trigger {trigger: "mail"}
execute if score @s staff_rank matches 2.. unless data storage pandamium:temp {sender_type:"staff"} run data modify storage pandamium.db:click_events selected.entry.data.type set value "set_sender_type_to_staff"
execute if score @s staff_rank matches 2.. unless data storage pandamium:temp {sender_type:"staff"} run execute store result storage pandamium.db:click_events selected.entry.data.mail_id int 1 run scoreboard players get <mail_id> variable
execute if score @s staff_rank matches 2.. unless data storage pandamium:temp {sender_type:"staff"} run data modify storage pandamium:temp set_sender_type_to_staff_click_event_root set from storage pandamium.db:click_events selected.entry.click_event_root
execute if score @s staff_rank matches 2.. unless data storage pandamium:temp {sender_type:"staff"} run function pandamium:utils/database/click_events/save
execute if score @s staff_rank matches 2.. unless data storage pandamium:temp {sender_type:"staff"} run data modify storage pandamium:temp modification_buttons append value '[{"storage":"pandamium:temp","nbt":"set_sender_type_to_staff_click_event_root","interpret":true},{"text":"[Send as Staff]","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Click to set sender type to ","color":"yellow"},{"text":"staff","bold":true}]}}]'

execute if score <attachment_slots_filled> variable matches 0..4 run function pandamium:utils/database/click_events/load_new
execute if score <attachment_slots_filled> variable matches 0..4 run function pandamium:utils/database/click_events/modify/set_owner/from_self
execute if score <attachment_slots_filled> variable matches 0..4 run function pandamium:utils/database/click_events/modify/set_trigger {trigger: "mail"}
execute if score <attachment_slots_filled> variable matches 0..4 run data modify storage pandamium.db:click_events selected.entry.data.type set value "add_item"
execute if score <attachment_slots_filled> variable matches 0..4 run execute store result storage pandamium.db:click_events selected.entry.data.mail_id int 1 run scoreboard players get <mail_id> variable
execute if score <attachment_slots_filled> variable matches 0..4 run data modify storage pandamium:temp add_item_click_event_root set from storage pandamium.db:click_events selected.entry.click_event_root
execute if score <attachment_slots_filled> variable matches 0..4 run function pandamium:utils/database/click_events/save
execute if score <attachment_slots_filled> variable matches 0..4 run data modify storage pandamium:temp modification_buttons append value '[{"storage":"pandamium:temp","nbt":"add_item_click_event_root","interpret":true},{"text":"[Attach Item]","color":"dark_aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to attach a held item to the mail","color":"dark_aqua"}]}}]'

execute if score <attachment_slots_filled> variable matches 1..5 run function pandamium:utils/database/click_events/load_new
execute if score <attachment_slots_filled> variable matches 1..5 run function pandamium:utils/database/click_events/modify/set_owner/from_self
execute if score <attachment_slots_filled> variable matches 1..5 run function pandamium:utils/database/click_events/modify/set_trigger {trigger: "mail"}
execute if score <attachment_slots_filled> variable matches 1..5 run data modify storage pandamium.db:click_events selected.entry.data.type set value "remove_all_items"
execute if score <attachment_slots_filled> variable matches 1..5 run execute store result storage pandamium.db:click_events selected.entry.data.mail_id int 1 run scoreboard players get <mail_id> variable
execute if score <attachment_slots_filled> variable matches 1..5 run data modify storage pandamium:temp remove_all_items_click_event_root set from storage pandamium.db:click_events selected.entry.click_event_root
execute if score <attachment_slots_filled> variable matches 1..5 run function pandamium:utils/database/click_events/save
execute if score <attachment_slots_filled> variable matches 1..5 run data modify storage pandamium:temp modification_buttons append value '[{"storage":"pandamium:temp","nbt":"remove_all_items_click_event_root","interpret":true},{"text":"[Remove Attached Items]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Click to remove all attached items","color":"red"}]}}]'

execute if data storage pandamium:temp modification_buttons[0] run tellraw @s ["",{"text":"\nModifications: ","color":"aqua","bold":true},{"text":"\n• ","color":"gray"},{"storage":"pandamium:temp","nbt":"modification_buttons[]","interpret":true,"separator":{"text":"\n• ","color":"gray"}}]

function pandamium:utils/database/click_events/load_new
function pandamium:utils/database/click_events/modify/set_owner/from_self
function pandamium:utils/database/click_events/modify/set_trigger {trigger: "mail"}
data modify storage pandamium.db:click_events selected.entry.data.type set value "confirm_send"
execute store result storage pandamium.db:click_events selected.entry.data.mail_id int 1 run scoreboard players get <mail_id> variable
data modify storage pandamium:temp confirm_send_click_event_root set from storage pandamium.db:click_events selected.entry.click_event_root
function pandamium:utils/database/click_events/save

execute store success score <is_saved_as_draft> variable if data storage pandamium.db:mail selected.entry{draft:1b}
execute if score <is_saved_as_draft> variable matches 0 run function pandamium:utils/database/click_events/load_new
execute if score <is_saved_as_draft> variable matches 0 run function pandamium:utils/database/click_events/modify/set_owner/from_self
execute if score <is_saved_as_draft> variable matches 0 run function pandamium:utils/database/click_events/modify/set_trigger {trigger: "mail"}
execute if score <is_saved_as_draft> variable matches 0 run data modify storage pandamium.db:click_events selected.entry.data.type set value "save_as_draft"
execute if score <is_saved_as_draft> variable matches 0 store result storage pandamium.db:click_events selected.entry.data.mail_id int 1 run scoreboard players get <mail_id> variable
execute if score <is_saved_as_draft> variable matches 0 run data modify storage pandamium:temp save_as_draft_click_event_root set from storage pandamium.db:click_events selected.entry.click_event_root
execute if score <is_saved_as_draft> variable matches 0 run function pandamium:utils/database/click_events/save

execute if score <is_saved_as_draft> variable matches 1 if score <attachment_slots_filled> variable matches 0 run function pandamium:utils/database/click_events/load_new
execute if score <is_saved_as_draft> variable matches 1 if score <attachment_slots_filled> variable matches 0 run function pandamium:utils/database/click_events/modify/set_owner/from_self
execute if score <is_saved_as_draft> variable matches 1 if score <attachment_slots_filled> variable matches 0 run function pandamium:utils/database/click_events/modify/set_trigger {trigger: "mail"}
execute if score <is_saved_as_draft> variable matches 1 if score <attachment_slots_filled> variable matches 0 run data modify storage pandamium.db:click_events selected.entry.data.type set value "delete_draft"
execute if score <is_saved_as_draft> variable matches 1 if score <attachment_slots_filled> variable matches 0 store result storage pandamium.db:click_events selected.entry.data.mail_id int 1 run scoreboard players get <mail_id> variable
execute if score <is_saved_as_draft> variable matches 1 if score <attachment_slots_filled> variable matches 0 run data modify storage pandamium:temp delete_draft_click_event_root set from storage pandamium.db:click_events selected.entry.click_event_root
execute if score <is_saved_as_draft> variable matches 1 if score <attachment_slots_filled> variable matches 0 run function pandamium:utils/database/click_events/save

execute if score <is_saved_as_draft> variable matches 1 if score <attachment_slots_filled> variable matches 1.. run tellraw @s ["",{"text":"\nConfirm Send: ","color":"aqua","bold":true},[{"storage":"pandamium:temp","nbt":"confirm_send_click_event_root","interpret":true},{"text":"[Confirm]","color":"dark_green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to ","color":"dark_green"},{"text":"confirm","bold":true}," that the above\ndetails about your message are\ncorrect and ",{"text":"send","bold":true}," it to ",{"storage":"pandamium:temp","nbt":"receiver_display_name","interpret":true}]}}],{"text":"  |  ","color":"green"},{"text":"[Delete Draft]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Remove all attachments to delete mail from drafts","color":"red"}]}}]
execute if score <is_saved_as_draft> variable matches 1 if score <attachment_slots_filled> variable matches 0 run tellraw @s ["",{"text":"\nConfirm Send: ","color":"aqua","bold":true},[{"storage":"pandamium:temp","nbt":"confirm_send_click_event_root","interpret":true},{"text":"[Confirm]","color":"dark_green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to ","color":"dark_green"},{"text":"confirm","bold":true}," that the above\ndetails about your message are\ncorrect and ",{"text":"send","bold":true}," it to ",{"storage":"pandamium:temp","nbt":"receiver_display_name","interpret":true}]}}],{"text":"  |  ","color":"green"},[{"storage":"pandamium:temp","nbt":"delete_draft_click_event_root","interpret":true},{"text":"[Delete Draft]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Click to ","color":"red"},{"text":"delete draft","bold":true}]}}]]
execute if score <is_saved_as_draft> variable matches 0 run tellraw @s ["",{"text":"\nConfirm Send: ","color":"aqua","bold":true},[{"storage":"pandamium:temp","nbt":"confirm_send_click_event_root","interpret":true},{"text":"[Confirm]","color":"dark_green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to ","color":"dark_green"},{"text":"confirm","bold":true}," that the above\ndetails about your message are\ncorrect and ",{"text":"send","bold":true}," it to ",{"storage":"pandamium:temp","nbt":"receiver_display_name","interpret":true}]}}],{"text":"  |  ","color":"green"},[{"storage":"pandamium:temp","nbt":"save_as_draft_click_event_root","interpret":true},{"text":"[Save as Draft]","color":"dark_aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to ","color":"dark_aqua"},{"text":"save as draft","bold":true}]}}]]

tellraw @s {"text":"======================","color":"aqua"}
