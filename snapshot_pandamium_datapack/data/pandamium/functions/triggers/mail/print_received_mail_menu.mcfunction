# prepare menu info
data modify storage pandamium:temp display_title set value '{"italic":true,"text":"Untitled Mail"}'
data modify storage pandamium:temp display_title set from storage pandamium.db:mail selected.entry.data.title

scoreboard players set <sent_by_player> variable 1
execute if data storage pandamium.db:mail selected.entry.sender.type unless data storage pandamium.db:mail selected.entry.sender{type:"player"} run scoreboard players set <sent_by_player> variable 0
execute if score <sent_by_player> variable matches 1 store result storage pandamium:templates macro.id.id int 1 run data get storage pandamium.db:mail selected.entry.sender.id
execute if score <sent_by_player> variable matches 1 run function pandamium:utils/get/display_name/from_id with storage pandamium:templates macro.id
execute if score <sent_by_player> variable matches 1 run data modify storage pandamium:temp sender_display_name set from storage pandamium:temp display_name
execute if score <sent_by_player> variable matches 0 run data modify storage pandamium:temp sender_display_name set value '"Unknown"'
execute if score <sent_by_player> variable matches 0 if data storage pandamium.db:mail selected.entry.sender{type:"server"} run data modify storage pandamium:temp sender_display_name set value '"Server"'
execute if score <sent_by_player> variable matches 0 if data storage pandamium.db:mail selected.entry.sender{type:"staff"} run data modify storage pandamium:temp sender_display_name set value '"The Staff Team"'

function pandamium:triggers/mail/get_time_phrase

execute store result score <number_of_other_receivers> variable if data storage pandamium.db:mail selected.entry.receivers[]
scoreboard players remove <number_of_other_receivers> variable 1
execute if score <number_of_other_receivers> variable matches 0 run data modify storage pandamium:temp receiver_display_name set value '"You"'
execute if score <number_of_other_receivers> variable matches 1 run data modify storage pandamium:temp receiver_display_name set value '"You and 1 other"'
execute if score <number_of_other_receivers> variable matches 2.. run data modify storage pandamium:temp receiver_display_name set value '["You and ",{"score":{"name":"<number_of_other_receivers>","objective":"variable"}}," others"]'

execute store success score <has_attached_items> variable if data storage pandamium.db:mail selected.entry.data.items[0]
scoreboard players set <has_available_attached_items> variable 0
execute if score <has_attached_items> variable matches 1 run data modify storage pandamium.db:mail selected.entry.data.items[].not_taken set value 1b
execute if score <has_attached_items> variable matches 1 run data modify storage pandamium.db:mail selected.entry.data.items[{taken:1b}].not_taken set value 0b
execute if score <has_attached_items> variable matches 1 store success score <has_available_attached_items> variable if data storage pandamium.db:mail selected.entry.data.items[{not_taken:1b}]
execute if score <has_attached_items> variable matches 1 run data remove storage pandamium.db:mail selected.entry.data.items[].not_taken

execute store success score <mail_is_ephemeral> variable if data storage pandamium.db:mail selected.entry{ephemeral:1b}

execute if score <has_available_attached_items> variable matches 1 run function pandamium:utils/database/click_events/load_new
execute if score <has_available_attached_items> variable matches 1 run function pandamium:utils/database/click_events/modify/set_owner/from_self
execute if score <has_available_attached_items> variable matches 1 run function pandamium:utils/database/click_events/modify/set_trigger {trigger: "mail"}
execute if score <has_available_attached_items> variable matches 1 run data modify storage pandamium.db:click_events selected.entry.data.type set value "take_incoming_items"
execute if score <has_available_attached_items> variable matches 1 run execute store result storage pandamium.db:click_events selected.entry.data.mail_id int 1 run scoreboard players get <mail_id> variable
execute if score <has_available_attached_items> variable matches 1 run data modify storage pandamium:temp take_incoming_items_click_event_root set from storage pandamium.db:click_events selected.entry.click_event_root
execute if score <has_available_attached_items> variable matches 1 run function pandamium:utils/database/click_events/save

execute if score <mail_is_ephemeral> variable matches 1 if score <has_available_attached_items> variable matches 0 run function pandamium:utils/database/click_events/load_new
execute if score <mail_is_ephemeral> variable matches 1 if score <has_available_attached_items> variable matches 0 run function pandamium:utils/database/click_events/modify/set_owner/from_self
execute if score <mail_is_ephemeral> variable matches 1 if score <has_available_attached_items> variable matches 0 run function pandamium:utils/database/click_events/modify/set_trigger {trigger: "mail"}
execute if score <mail_is_ephemeral> variable matches 1 if score <has_available_attached_items> variable matches 0 run data modify storage pandamium.db:click_events selected.entry.data.type set value "delete_ephemeral_mail"
execute if score <mail_is_ephemeral> variable matches 1 if score <has_available_attached_items> variable matches 0 run execute store result storage pandamium.db:click_events selected.entry.data.mail_id int 1 run scoreboard players get <mail_id> variable
execute if score <mail_is_ephemeral> variable matches 1 if score <has_available_attached_items> variable matches 0 run data modify storage pandamium:temp delete_ephemeral_mail_click_event_root set from storage pandamium.db:click_events selected.entry.click_event_root
execute if score <mail_is_ephemeral> variable matches 1 if score <has_available_attached_items> variable matches 0 run function pandamium:utils/database/click_events/save

# print
tellraw @s {"storage":"pandamium:temp","nbt":"menu_header","interpret":true}
tellraw @s ["",{"text":"Title: ","color":"gray"},{"storage":"pandamium:temp","nbt":"display_title","interpret":true,"underlined":true}," ",{"text":"\nMessage:\n","color":"gray"},{"storage":"pandamium.db:mail","nbt":"selected.entry.data.message","interpret":true},{"text":"\nFrom: ","color":"gray"},[{"text":"","color":"aqua"},{"storage":"pandamium:temp","nbt":"sender_display_name","interpret":true}]," ",{"text":"[⌚]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":["Sent ",{"storage":"pandamium:temp","nbt":"time_phrase","interpret":true}]}},{"text":"\nTo: ","color":"gray"},[{"text":"","color":"aqua"},{"storage":"pandamium:temp","nbt":"receiver_display_name","interpret":true}]]
execute if score <has_available_attached_items> variable matches 1 run tellraw @s ["",{"text":"Attachments: ","color":"gray"},[{"storage":"pandamium:temp","nbt":"take_incoming_items_click_event_root","interpret":true},{"text":"[Take Attached Items]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to take the attached items from this mail","color":"blue"}]}}],{"text":"\n• ","color":"gray"},{"storage":"pandamium.db:mail","nbt":"selected.entry.data.items[].name","interpret":true,"separator":{"text":"\n• ","color":"gray"}}]
execute if score <has_available_attached_items> variable matches 0 if score <has_attached_items> variable matches 1 run tellraw @s ["",{"text":"Attachments:\n• ","color":"gray"},{"storage":"pandamium.db:mail","nbt":"selected.entry.data.items[].name","interpret":true,"separator":{"text":"\n• ","color":"gray","strikethrough":false},"strikethrough":true}]

execute if score <mail_is_ephemeral> variable matches 1 if score <has_available_attached_items> variable matches 0 run tellraw @s ["\n",[{"storage":"pandamium:temp","nbt":"delete_ephemeral_mail_click_event_root","interpret":true},{"text":"[Delete This Mail]","color":"#7AA4BB","hoverEvent":{"action":"show_text","contents":[{"text":"Click to delete this mail","color":"#7AA4BB"}]}}]]

tellraw @s ["\n",{"text":"Pages: ","color":"yellow","bold":true},{"storage":"pandamium:dictionary","nbt":"triggers.mail.main_menu_button","interpret":true},{"text":" > ","color":"gray"},{"storage":"pandamium:dictionary","nbt":"triggers.mail.inbox_menu_button","interpret":true}]
tellraw @s {"text":"======================","color":"aqua"}
