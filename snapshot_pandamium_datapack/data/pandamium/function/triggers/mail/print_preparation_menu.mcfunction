execute unless data storage pandamium.db.mail:io selected.entry{sent:0b} run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" An error occurred while trying to print a menu!","color":"red"}]

execute store success score <has_message> variable if data storage pandamium.db.mail:io selected.entry.data.message

data remove storage pandamium:temp display_title
data modify storage pandamium:temp display_title set from storage pandamium.db.mail:io selected.entry.data.title
execute unless data storage pandamium:temp display_title unless data storage pandamium.db.mail:io selected.entry.data.message if data storage pandamium.db.mail:io selected.entry.data.items[0] run data modify storage pandamium:temp display_title set value '["",{"italic":true,"text":"Mailed Items"},{"text":" ","underlined":false},{"text":"ℹ","color":"blue","underlined":false,"hoverEvent":{"action":"show_text","contents":["",{"text":"To send mail with a message and title, hold a book and quill when sending the mail and write your message on the first page with your title on the first line using markdown. For example:","color":"gray"},"\\n\\n# Title Goes Here\\nMessage goes here..."]}}]'
execute unless data storage pandamium:temp display_title if score <has_message> variable matches 0 run data modify storage pandamium:temp display_title set value '["",{"italic":true,"text":"Untitled Mail"},{"text":" ","underlined":false},{"text":"ℹ","color":"blue","underlined":false,"hoverEvent":{"action":"show_text","contents":["",{"text":"To set a title, write a heading using markdown on the first line of a Book and Quill, then hold it and click the \\"Add Message\\" button. For example:","color":"gray"},"\\n\\n# Title Goes Here\\nMessage goes here..."]}}]'
execute unless data storage pandamium:temp display_title if score <has_message> variable matches 1 run data modify storage pandamium:temp display_title set value '["",{"italic":true,"text":"Untitled Mail"},{"text":" ","underlined":false},{"text":"ℹ","color":"blue","underlined":false,"hoverEvent":{"action":"show_text","contents":["",{"text":"To set a title, write a heading using markdown on the first line of a Book and Quill, then hold it and click the \\"Edit Message\\" button. For example:","color":"gray"},"\\n\\n# Title Goes Here\\nMessage goes here..."]}}]'

execute store success score <receiver_type_is_news_feed> variable if data storage pandamium.db.mail:io selected.entry{receiver_type:"news_feed"}
execute store success score <receiver_type_is_staff> variable if data storage pandamium.db.mail:io selected.entry{receiver_type:"staff"}
scoreboard players set <receiver_type_is_player> variable 0
execute unless score <receiver_type_is_news_feed> variable matches 1 unless score <receiver_type_is_staff> variable matches 1 run scoreboard players set <receiver_type_is_player> variable 1
execute if score <receiver_type_is_player> variable matches 1 store result storage pandamium:templates macro.id.id int 1 run data get storage pandamium.db.mail:io selected.entry.receivers[0].id
execute if score <receiver_type_is_player> variable matches 1 run function pandamium:utils/get/display_name/from_id with storage pandamium:templates macro.id
execute if score <receiver_type_is_player> variable matches 1 run data modify storage pandamium:temp receiver_display_name set from storage pandamium:temp display_name
execute if score <receiver_type_is_player> variable matches 1 if data storage pandamium.db.mail:io selected.entry.receivers[1] run data modify storage pandamium:temp receiver_display_name set value '"Multiple Players"'
execute if score <receiver_type_is_player> variable matches 0 if score <receiver_type_is_news_feed> variable matches 1 run data modify storage pandamium:temp receiver_display_name set value '{"text":"News Feed","color":"#00AA7F"}'
execute if score <receiver_type_is_player> variable matches 0 if score <receiver_type_is_staff> variable matches 1 run data modify storage pandamium:temp receiver_display_name set value '{"text":"The Staff Team","color":"yellow"}'

data modify storage pandamium:temp sender_display_name set value '"You"'
execute if data storage pandamium.db.mail:io selected.entry.sender{type:"server"} run data modify storage pandamium:temp sender_display_name set value '{"text":"Server","color":"#FF0000"}'
execute if data storage pandamium.db.mail:io selected.entry.sender{type:"staff"} run data modify storage pandamium:temp sender_display_name set value '{"text":"The Staff Team","color":"yellow"}'

tellraw @s {"storage":"pandamium:temp","nbt":"menu_header","interpret":true}

tellraw @s {"text":"Preparing to Send Mail:\n","color":"aqua","bold":true}
tellraw @s ["",{"text":"Title: ","color":"gray"},{"storage":"pandamium:temp","nbt":"display_title","interpret":true,"underlined":true}]
execute if score <has_message> variable matches 1 run tellraw @s ["",{"text":"Message:\n","color":"gray"},{"storage":"pandamium.db.mail:io","nbt":"selected.entry.data.message","interpret":true}]
tellraw @s [{"text":"To: ","color":"gray"},[{"text":"","color":"aqua"},{"storage":"pandamium:temp","nbt":"receiver_display_name","interpret":true}]]
execute unless data storage pandamium:temp {sender_display_name:'"You"'} run tellraw @s [{"text":"From: ","color":"gray"},[{"text":"","color":"aqua"},{"storage":"pandamium:temp","nbt":"sender_display_name","interpret":true}]]
execute if data storage pandamium.db.mail:io selected.entry{ephemeral:1b} run tellraw @s ["",{"text":"Ephemeral: ","color":"gray"},{"text":"True","color":"#7AA4BB"}]

execute store result score <attachment_slots_filled> variable run data get storage pandamium.db.mail:io selected.entry.data.items
execute if score <attachment_slots_filled> variable matches 1.. run data modify storage pandamium:temp attachment_names set value ['""']
execute if score <attachment_slots_filled> variable matches 1.. run data modify storage pandamium:temp attachment_names append from storage pandamium.db.mail:io selected.entry.data.items[].name
execute if score <attachment_slots_filled> variable matches 1.. run tellraw @s [{"text":"Attachments (","color":"gray"},{"score":{"name":"<attachment_slots_filled>","objective":"variable"}},"/5):",[{"text":"","color":"white"},{"storage":"pandamium:temp","nbt":"attachment_names[]","interpret":true,"separator":{"text":"\n• ","color":"gray"}}]]

data modify storage pandamium:temp modification_buttons set value []

execute unless data storage pandamium.db.mail:io selected.entry.sender.type run data modify storage pandamium.db.mail:io selected.entry.sender.type set value "player"

# MODIFIER set the sender type to "player"
execute if score <receiver_type_is_player> variable matches 1 unless data storage pandamium.db.mail:io selected.entry.sender{type:"player"} run function pandamium:utils/database/click_events/load_new
execute if score <receiver_type_is_player> variable matches 1 unless data storage pandamium.db.mail:io selected.entry.sender{type:"player"} run function pandamium:utils/database/click_events/modify/set_owner/from_self
execute if score <receiver_type_is_player> variable matches 1 unless data storage pandamium.db.mail:io selected.entry.sender{type:"player"} run function pandamium:utils/database/click_events/modify/set_trigger {trigger: "mail"}
execute if score <receiver_type_is_player> variable matches 1 unless data storage pandamium.db.mail:io selected.entry.sender{type:"player"} run data modify storage pandamium.db.click_events:io selected.entry.data.type set value "set_sender_type_to_player"
execute if score <receiver_type_is_player> variable matches 1 unless data storage pandamium.db.mail:io selected.entry.sender{type:"player"} run execute store result storage pandamium.db.click_events:io selected.entry.data.mail_id int 1 run scoreboard players get <mail_id> variable
execute if score <receiver_type_is_player> variable matches 1 unless data storage pandamium.db.mail:io selected.entry.sender{type:"player"} run data modify storage pandamium:temp set_sender_type_to_player_click_event_root set from storage pandamium.db.click_events:io selected.entry.click_event_root
execute if score <receiver_type_is_player> variable matches 1 unless data storage pandamium.db.mail:io selected.entry.sender{type:"player"} run function pandamium:utils/database/click_events/save
execute if score <receiver_type_is_player> variable matches 1 unless data storage pandamium.db.mail:io selected.entry.sender{type:"player"} run data modify storage pandamium:temp modification_buttons append value '[{"storage":"pandamium:temp","nbt":"set_sender_type_to_player_click_event_root","interpret":true},{"text":"[Send as Player]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to set sender type to ","color":"aqua"},{"text":"player","bold":true}]}}]'

# MODIFIER set the sender type to "server"
execute if score @s staff_perms matches 5.. if score <receiver_type_is_player> variable matches 1 unless data storage pandamium.db.mail:io selected.entry.sender{type:"server"} run function pandamium:utils/database/click_events/load_new
execute if score @s staff_perms matches 5.. if score <receiver_type_is_player> variable matches 1 unless data storage pandamium.db.mail:io selected.entry.sender{type:"server"} run function pandamium:utils/database/click_events/modify/set_owner/from_self
execute if score @s staff_perms matches 5.. if score <receiver_type_is_player> variable matches 1 unless data storage pandamium.db.mail:io selected.entry.sender{type:"server"} run function pandamium:utils/database/click_events/modify/set_trigger {trigger: "mail"}
execute if score @s staff_perms matches 5.. if score <receiver_type_is_player> variable matches 1 unless data storage pandamium.db.mail:io selected.entry.sender{type:"server"} run data modify storage pandamium.db.click_events:io selected.entry.data.type set value "set_sender_type_to_server"
execute if score @s staff_perms matches 5.. if score <receiver_type_is_player> variable matches 1 unless data storage pandamium.db.mail:io selected.entry.sender{type:"server"} run execute store result storage pandamium.db.click_events:io selected.entry.data.mail_id int 1 run scoreboard players get <mail_id> variable
execute if score @s staff_perms matches 5.. if score <receiver_type_is_player> variable matches 1 unless data storage pandamium.db.mail:io selected.entry.sender{type:"server"} run data modify storage pandamium:temp set_sender_type_to_server_click_event_root set from storage pandamium.db.click_events:io selected.entry.click_event_root
execute if score @s staff_perms matches 5.. if score <receiver_type_is_player> variable matches 1 unless data storage pandamium.db.mail:io selected.entry.sender{type:"server"} run function pandamium:utils/database/click_events/save
execute if score @s staff_perms matches 5.. if score <receiver_type_is_player> variable matches 1 unless data storage pandamium.db.mail:io selected.entry.sender{type:"server"} run data modify storage pandamium:temp modification_buttons append value '[{"storage":"pandamium:temp","nbt":"set_sender_type_to_server_click_event_root","interpret":true},{"text":"[Send as Server]","color":"#FF0000","hoverEvent":{"action":"show_text","contents":[{"text":"Click to set sender type to ","color":"#FF0000"},{"text":"server","bold":true}]}}]'

# MODIFIER set the sender type to "staff"
execute if score @s staff_perms matches 2.. if score <receiver_type_is_player> variable matches 1 unless data storage pandamium.db.mail:io selected.entry.sender{type:"staff"} run function pandamium:utils/database/click_events/load_new
execute if score @s staff_perms matches 2.. if score <receiver_type_is_player> variable matches 1 unless data storage pandamium.db.mail:io selected.entry.sender{type:"staff"} run function pandamium:utils/database/click_events/modify/set_owner/from_self
execute if score @s staff_perms matches 2.. if score <receiver_type_is_player> variable matches 1 unless data storage pandamium.db.mail:io selected.entry.sender{type:"staff"} run function pandamium:utils/database/click_events/modify/set_trigger {trigger: "mail"}
execute if score @s staff_perms matches 2.. if score <receiver_type_is_player> variable matches 1 unless data storage pandamium.db.mail:io selected.entry.sender{type:"staff"} run data modify storage pandamium.db.click_events:io selected.entry.data.type set value "set_sender_type_to_staff"
execute if score @s staff_perms matches 2.. if score <receiver_type_is_player> variable matches 1 unless data storage pandamium.db.mail:io selected.entry.sender{type:"staff"} run execute store result storage pandamium.db.click_events:io selected.entry.data.mail_id int 1 run scoreboard players get <mail_id> variable
execute if score @s staff_perms matches 2.. if score <receiver_type_is_player> variable matches 1 unless data storage pandamium.db.mail:io selected.entry.sender{type:"staff"} run data modify storage pandamium:temp set_sender_type_to_staff_click_event_root set from storage pandamium.db.click_events:io selected.entry.click_event_root
execute if score @s staff_perms matches 2.. if score <receiver_type_is_player> variable matches 1 unless data storage pandamium.db.mail:io selected.entry.sender{type:"staff"} run function pandamium:utils/database/click_events/save
execute if score @s staff_perms matches 2.. if score <receiver_type_is_player> variable matches 1 unless data storage pandamium.db.mail:io selected.entry.sender{type:"staff"} run data modify storage pandamium:temp modification_buttons append value '[{"storage":"pandamium:temp","nbt":"set_sender_type_to_staff_click_event_root","interpret":true},{"text":"[Send as Staff]","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Click to set sender type to ","color":"yellow"},{"text":"staff","bold":true}]}}]'

execute if data storage pandamium.db.mail:io selected.entry.sender{type:"player"} run data remove storage pandamium.db.mail:io selected.entry.sender.type

# MODIFIER set mail as ephemeral
execute if score @s staff_perms matches 5.. if score <receiver_type_is_player> variable matches 1 unless data storage pandamium.db.mail:io selected.entry{ephemeral:1b} run function pandamium:utils/database/click_events/load_new
execute if score @s staff_perms matches 5.. if score <receiver_type_is_player> variable matches 1 unless data storage pandamium.db.mail:io selected.entry{ephemeral:1b} run function pandamium:utils/database/click_events/modify/set_owner/from_self
execute if score @s staff_perms matches 5.. if score <receiver_type_is_player> variable matches 1 unless data storage pandamium.db.mail:io selected.entry{ephemeral:1b} run function pandamium:utils/database/click_events/modify/set_trigger {trigger: "mail"}
execute if score @s staff_perms matches 5.. if score <receiver_type_is_player> variable matches 1 unless data storage pandamium.db.mail:io selected.entry{ephemeral:1b} run data modify storage pandamium.db.click_events:io selected.entry.data.type set value "set_ephemeral"
execute if score @s staff_perms matches 5.. if score <receiver_type_is_player> variable matches 1 unless data storage pandamium.db.mail:io selected.entry{ephemeral:1b} run execute store result storage pandamium.db.click_events:io selected.entry.data.mail_id int 1 run scoreboard players get <mail_id> variable
execute if score @s staff_perms matches 5.. if score <receiver_type_is_player> variable matches 1 unless data storage pandamium.db.mail:io selected.entry{ephemeral:1b} run data modify storage pandamium:temp set_ephemeral_click_event_root set from storage pandamium.db.click_events:io selected.entry.click_event_root
execute if score @s staff_perms matches 5.. if score <receiver_type_is_player> variable matches 1 unless data storage pandamium.db.mail:io selected.entry{ephemeral:1b} run function pandamium:utils/database/click_events/save
execute if score @s staff_perms matches 5.. if score <receiver_type_is_player> variable matches 1 unless data storage pandamium.db.mail:io selected.entry{ephemeral:1b} run data modify storage pandamium:temp modification_buttons append value '[{"storage":"pandamium:temp","nbt":"set_ephemeral_click_event_root","interpret":true},{"text":"[Set Ephemeral]","color":"#7AA4BB","hoverEvent":{"action":"show_text","contents":[{"text":"Click to set ephemeral to ","color":"#7AA4BB"},{"text":"true","bold":true}]}}]'

# MODIFIER add a message
function pandamium:utils/database/click_events/load_new
function pandamium:utils/database/click_events/modify/set_owner/from_self
function pandamium:utils/database/click_events/modify/set_trigger {trigger: "mail"}
data modify storage pandamium.db.click_events:io selected.entry.data.type set value "set_message"
execute store result storage pandamium.db.click_events:io selected.entry.data.mail_id int 1 run scoreboard players get <mail_id> variable
data modify storage pandamium:temp set_message_click_event_root set from storage pandamium.db.click_events:io selected.entry.click_event_root
function pandamium:utils/database/click_events/save
execute if score <has_message> variable matches 0 run data modify storage pandamium:temp modification_buttons append value '[{"storage":"pandamium:temp","nbt":"set_message_click_event_root","interpret":true},{"text":"[Add a Message]","color":"dark_aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to add a message and title to your mail","color":"dark_aqua"}]}}]'
execute if score <has_message> variable matches 1 run data modify storage pandamium:temp modification_buttons append value '[{"storage":"pandamium:temp","nbt":"set_message_click_event_root","interpret":true},{"text":"[Edit Message]","color":"dark_aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to edit your mail\'s message and title","color":"dark_aqua"}]}}]'

# MODIFIER attach an item
execute if score <receiver_type_is_news_feed> variable matches 0 if score <attachment_slots_filled> variable matches 0..4 run function pandamium:utils/database/click_events/load_new
execute if score <receiver_type_is_news_feed> variable matches 0 if score <attachment_slots_filled> variable matches 0..4 run function pandamium:utils/database/click_events/modify/set_owner/from_self
execute if score <receiver_type_is_news_feed> variable matches 0 if score <attachment_slots_filled> variable matches 0..4 run function pandamium:utils/database/click_events/modify/set_trigger {trigger: "mail"}
execute if score <receiver_type_is_news_feed> variable matches 0 if score <attachment_slots_filled> variable matches 0..4 run data modify storage pandamium.db.click_events:io selected.entry.data.type set value "add_item"
execute if score <receiver_type_is_news_feed> variable matches 0 if score <attachment_slots_filled> variable matches 0..4 run execute store result storage pandamium.db.click_events:io selected.entry.data.mail_id int 1 run scoreboard players get <mail_id> variable
execute if score <receiver_type_is_news_feed> variable matches 0 if score <attachment_slots_filled> variable matches 0..4 run data modify storage pandamium:temp add_item_click_event_root set from storage pandamium.db.click_events:io selected.entry.click_event_root
execute if score <receiver_type_is_news_feed> variable matches 0 if score <attachment_slots_filled> variable matches 0..4 run function pandamium:utils/database/click_events/save
execute if score <receiver_type_is_news_feed> variable matches 0 if score <attachment_slots_filled> variable matches 0..4 run data modify storage pandamium:temp modification_buttons append value '[{"storage":"pandamium:temp","nbt":"add_item_click_event_root","interpret":true},{"text":"[Attach Item]","color":"dark_aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to attach a held item to the mail","color":"dark_aqua"}]}}]'

# MODIFIER remove attached items
execute if score <attachment_slots_filled> variable matches 1..5 run function pandamium:utils/database/click_events/load_new
execute if score <attachment_slots_filled> variable matches 1..5 run function pandamium:utils/database/click_events/modify/set_owner/from_self
execute if score <attachment_slots_filled> variable matches 1..5 run function pandamium:utils/database/click_events/modify/set_trigger {trigger: "mail"}
execute if score <attachment_slots_filled> variable matches 1..5 run data modify storage pandamium.db.click_events:io selected.entry.data.type set value "remove_all_items"
execute if score <attachment_slots_filled> variable matches 1..5 run execute store result storage pandamium.db.click_events:io selected.entry.data.mail_id int 1 run scoreboard players get <mail_id> variable
execute if score <attachment_slots_filled> variable matches 1..5 run data modify storage pandamium:temp remove_all_items_click_event_root set from storage pandamium.db.click_events:io selected.entry.click_event_root
execute if score <attachment_slots_filled> variable matches 1..5 run function pandamium:utils/database/click_events/save
execute if score <attachment_slots_filled> variable matches 1..5 run data modify storage pandamium:temp modification_buttons append value '[{"storage":"pandamium:temp","nbt":"remove_all_items_click_event_root","interpret":true},{"text":"[Remove Attached Items]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Click to remove all attached items","color":"red"}]}}]'

execute if data storage pandamium:temp modification_buttons[0] run tellraw @s ["",{"text":"\nModifications: ","color":"aqua","bold":true},{"text":"\n• ","color":"gray"},{"storage":"pandamium:temp","nbt":"modification_buttons[]","interpret":true,"separator":{"text":"\n• ","color":"gray"}}]

scoreboard players set <has_content> variable 1
execute unless data storage pandamium.db.mail:io selected.entry.data.title unless data storage pandamium.db.mail:io selected.entry.data.message if score <attachment_slots_filled> variable matches 0 run scoreboard players set <has_content> variable 0

execute if score <has_content> variable matches 1 run function pandamium:utils/database/click_events/load_new
execute if score <has_content> variable matches 1 run function pandamium:utils/database/click_events/modify/set_owner/from_self
execute if score <has_content> variable matches 1 run function pandamium:utils/database/click_events/modify/set_trigger {trigger: "mail"}
execute if score <has_content> variable matches 1 run data modify storage pandamium.db.click_events:io selected.entry.data.type set value "confirm_send"
execute if score <has_content> variable matches 1 run execute store result storage pandamium.db.click_events:io selected.entry.data.mail_id int 1 run scoreboard players get <mail_id> variable
execute if score <has_content> variable matches 1 run data modify storage pandamium:temp confirm_send_click_event_root set from storage pandamium.db.click_events:io selected.entry.click_event_root
execute if score <has_content> variable matches 1 run function pandamium:utils/database/click_events/save

execute store success score <is_saved_as_draft> variable if data storage pandamium.db.mail:io selected.entry{draft:1b}

execute if score <is_saved_as_draft> variable matches 0 if score <has_content> variable matches 1 run function pandamium:utils/database/click_events/load_new
execute if score <is_saved_as_draft> variable matches 0 if score <has_content> variable matches 1 run function pandamium:utils/database/click_events/modify/set_owner/from_self
execute if score <is_saved_as_draft> variable matches 0 if score <has_content> variable matches 1 run function pandamium:utils/database/click_events/modify/set_trigger {trigger: "mail"}
execute if score <is_saved_as_draft> variable matches 0 if score <has_content> variable matches 1 run data modify storage pandamium.db.click_events:io selected.entry.data.type set value "save_as_draft"
execute if score <is_saved_as_draft> variable matches 0 if score <has_content> variable matches 1 store result storage pandamium.db.click_events:io selected.entry.data.mail_id int 1 run scoreboard players get <mail_id> variable
execute if score <is_saved_as_draft> variable matches 0 if score <has_content> variable matches 1 run data modify storage pandamium:temp save_as_draft_click_event_root set from storage pandamium.db.click_events:io selected.entry.click_event_root
execute if score <is_saved_as_draft> variable matches 0 if score <has_content> variable matches 1 run function pandamium:utils/database/click_events/save

execute if score <is_saved_as_draft> variable matches 1 if score <attachment_slots_filled> variable matches 0 run function pandamium:utils/database/click_events/load_new
execute if score <is_saved_as_draft> variable matches 1 if score <attachment_slots_filled> variable matches 0 run function pandamium:utils/database/click_events/modify/set_owner/from_self
execute if score <is_saved_as_draft> variable matches 1 if score <attachment_slots_filled> variable matches 0 run function pandamium:utils/database/click_events/modify/set_trigger {trigger: "mail"}
execute if score <is_saved_as_draft> variable matches 1 if score <attachment_slots_filled> variable matches 0 run data modify storage pandamium.db.click_events:io selected.entry.data.type set value "delete_draft"
execute if score <is_saved_as_draft> variable matches 1 if score <attachment_slots_filled> variable matches 0 store result storage pandamium.db.click_events:io selected.entry.data.mail_id int 1 run scoreboard players get <mail_id> variable
execute if score <is_saved_as_draft> variable matches 1 if score <attachment_slots_filled> variable matches 0 run data modify storage pandamium:temp delete_draft_click_event_root set from storage pandamium.db.click_events:io selected.entry.click_event_root
execute if score <is_saved_as_draft> variable matches 1 if score <attachment_slots_filled> variable matches 0 run function pandamium:utils/database/click_events/save

execute if score <is_saved_as_draft> variable matches 1 if score <attachment_slots_filled> variable matches 1.. run tellraw @s ["",{"text":"\nConfirm Send: ","color":"aqua","bold":true},[{"storage":"pandamium:temp","nbt":"confirm_send_click_event_root","interpret":true},{"text":"[Confirm]","color":"dark_green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to ","color":"dark_green"},{"text":"confirm","bold":true}," that the above\ndetails about your message are\ncorrect and ",{"text":"send","bold":true}," it to ",{"storage":"pandamium:temp","nbt":"receiver_display_name","interpret":true}]}}],{"text":"  |  ","color":"green"},{"text":"[Delete Draft]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Remove all attachments to delete mail from drafts","color":"red"}]}}]
execute if score <is_saved_as_draft> variable matches 1 if score <has_content> variable matches 1 if score <attachment_slots_filled> variable matches 0 run tellraw @s ["",{"text":"\nConfirm Send: ","color":"aqua","bold":true},[{"storage":"pandamium:temp","nbt":"confirm_send_click_event_root","interpret":true},{"text":"[Confirm]","color":"dark_green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to ","color":"dark_green"},{"text":"confirm","bold":true}," that the above\ndetails about your message are\ncorrect and ",{"text":"send","bold":true}," it to ",{"storage":"pandamium:temp","nbt":"receiver_display_name","interpret":true}]}}],{"text":"  |  ","color":"green"},[{"storage":"pandamium:temp","nbt":"delete_draft_click_event_root","interpret":true},{"text":"[Delete Draft]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Click to ","color":"red"},{"text":"delete draft","bold":true}]}}]]
execute if score <is_saved_as_draft> variable matches 1 if score <has_content> variable matches 0 run tellraw @s ["",{"text":"\nConfirm Send: ","color":"aqua","bold":true},{"text":"[Confirm]","color":"gray","hoverEvent":{"action":"show_text","contents":{"text":"You cannot send mail that has no content","color":"red"}}},{"text":"  |  ","color":"green"},[{"storage":"pandamium:temp","nbt":"delete_draft_click_event_root","interpret":true},{"text":"[Delete Draft]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Click to ","color":"red"},{"text":"delete draft","bold":true}]}}]]
execute if score <is_saved_as_draft> variable matches 0 if score <has_content> variable matches 1 run tellraw @s ["",{"text":"\nConfirm Send: ","color":"aqua","bold":true},[{"storage":"pandamium:temp","nbt":"confirm_send_click_event_root","interpret":true},{"text":"[Confirm]","color":"dark_green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to ","color":"dark_green"},{"text":"confirm","bold":true}," that the above\ndetails about your message are\ncorrect and ",{"text":"send","bold":true}," it to ",{"storage":"pandamium:temp","nbt":"receiver_display_name","interpret":true}]}}],{"text":"  |  ","color":"green"},[{"storage":"pandamium:temp","nbt":"save_as_draft_click_event_root","interpret":true},{"text":"[Save as Draft]","color":"dark_aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to ","color":"dark_aqua"},{"text":"save as draft","bold":true}]}}]]
execute if score <is_saved_as_draft> variable matches 0 if score <has_content> variable matches 0 run tellraw @s ["",{"text":"\nConfirm Send: ","color":"aqua","bold":true},{"text":"[Confirm]","color":"gray","hoverEvent":{"action":"show_text","contents":{"text":"You cannot send mail that has no content","color":"red"}}},{"text":"  |  ","color":"green"},{"text":"[Save as Draft]","color":"gray","hoverEvent":{"action":"show_text","contents":{"text":"You cannot save mail that has no content","color":"red"}}}]

execute if score <is_saved_as_draft> variable matches 1 run tellraw @s ["\n",{"text":"Pages: ","color":"yellow","bold":true},{"storage":"pandamium:dictionary","nbt":"triggers.mail.main_menu_button","interpret":true},{"text":" > ","color":"gray"},{"storage":"pandamium:dictionary","nbt":"triggers.mail.drafts_menu_button","interpret":true}]
tellraw @s {"text":"======================","color":"aqua"}
