# prepare menu info
execute store success score <receiver_type_is_news_feed> variable if data storage pandamium.db.mail:io selected.entry{receiver_type:"news_feed"}
execute store success score <receiver_type_is_staff> variable if data storage pandamium.db.mail:io selected.entry{receiver_type:"staff"}

scoreboard players set <mail_list_type> variable 0
execute if score <receiver_type_is_news_feed> variable matches 1 run scoreboard players set <mail_list_type> variable 4
execute if score <receiver_type_is_staff> variable matches 1 run scoreboard players set <mail_list_type> variable 5

data modify storage pandamium:temp display_title set value '{"italic":true,"text":"Untitled Mail"}'
data modify storage pandamium:temp display_title set from storage pandamium.db.mail:io selected.entry.data.title

scoreboard players set <sent_by_player> variable 1
execute if data storage pandamium.db.mail:io selected.entry.sender.type unless data storage pandamium.db.mail:io selected.entry.sender{type:"player"} run scoreboard players set <sent_by_player> variable 0
execute if score <sent_by_player> variable matches 1 store result storage pandamium:templates macro.id.id int 1 run data get storage pandamium.db.mail:io selected.entry.sender.id
execute if score <sent_by_player> variable matches 1 run function pandamium:utils/get/display_name/from_id with storage pandamium:templates macro.id
execute if score <sent_by_player> variable matches 1 run data modify storage pandamium:temp sender_display_name set from storage pandamium:temp display_name
execute if score <sent_by_player> variable matches 0 run data modify storage pandamium:temp sender_display_name set value '"Unknown"'
execute if score <sent_by_player> variable matches 0 if data storage pandamium.db.mail:io selected.entry.sender{type:"server"} run data modify storage pandamium:temp sender_display_name set value '{"text":"Server","color":"#FF0000"}'
execute if score <sent_by_player> variable matches 0 if data storage pandamium.db.mail:io selected.entry.sender{type:"staff"} run data modify storage pandamium:temp sender_display_name set value '{"text":"The Staff Team","color":"yellow"}'

function pandamium:triggers/mail/get_time_phrase

execute store result score <number_of_other_receivers> variable if data storage pandamium.db.mail:io selected.entry.receivers[]
scoreboard players remove <number_of_other_receivers> variable 1
execute if score <receiver_type_is_news_feed> variable matches 0 if score <number_of_other_receivers> variable matches 0 run data modify storage pandamium:temp receiver_display_name set value '"You"'
execute if score <receiver_type_is_news_feed> variable matches 0 if score <number_of_other_receivers> variable matches 1 run data modify storage pandamium:temp receiver_display_name set value '"You and 1 other"'
execute if score <receiver_type_is_news_feed> variable matches 0 if score <number_of_other_receivers> variable matches 2.. run data modify storage pandamium:temp receiver_display_name set value '["You and ",{"score":{"name":"<number_of_other_receivers>","objective":"variable"}}," others"]'
execute if score <receiver_type_is_news_feed> variable matches 1 run data modify storage pandamium:temp receiver_display_name set value '"All Players"'

# attachments
execute store success score <has_attached_items> variable if data storage pandamium.db.mail:io selected.entry.data.items[0]
execute if score <has_attached_items> variable matches 1 run data modify storage pandamium:temp attached_items set from storage pandamium.db.mail:io selected.entry.data.items

execute if score <has_attached_items> variable matches 1 run data modify storage pandamium:temp attached_items[].__taken__ set value 0b
execute if score <has_attached_items> variable matches 1 if data storage pandamium:temp attached_items[{taken:1b}] run data modify storage pandamium:temp attached_items[{taken:1b}].__taken__ set value 1b

execute if score <has_attached_items> variable matches 1 run data modify storage pandamium:temp attached_items[].__viewable__ set value 1b
execute if score <has_attached_items> variable matches 1 if data storage pandamium:temp attached_items[{private:{}}] run data modify storage pandamium:temp attached_items[{private:{}}].__viewable__ set value 0b
execute if score <has_attached_items> variable matches 1 store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id
execute if score <has_attached_items> variable matches 1 run function pandamium:triggers/mail/print_received_mail_menu/set_viewable_attachments with storage pandamium:templates macro.id

scoreboard players set <has_viewable_attached_items> variable 0
execute if score <has_attached_items> variable matches 1 if data storage pandamium:temp attached_items[{__viewable__:1b}] run scoreboard players set <has_viewable_attached_items> variable 1

scoreboard players set <has_available_attached_items> variable 0
execute if score <has_attached_items> variable matches 1 if data storage pandamium:temp attached_items[{__viewable__:1b,__taken__:0b}] run scoreboard players set <has_available_attached_items> variable 1

execute if score <has_attached_items> variable matches 1 run data modify storage pandamium:temp attached_items prepend value {name:'""',__viewable__:1b}

# ephemeral
execute store success score <mail_is_ephemeral> variable if data storage pandamium.db.mail:io selected.entry{ephemeral:1b}

# buttons
execute if score <has_available_attached_items> variable matches 1 run function pandamium:utils/database/click_events/load_new
execute if score <has_available_attached_items> variable matches 1 run function pandamium:utils/database/click_events/modify/set_owner/from_self
execute if score <has_available_attached_items> variable matches 1 run function pandamium:utils/database/click_events/modify/set_trigger {trigger: "mail"}
execute if score <has_available_attached_items> variable matches 1 run data modify storage pandamium.db.click_events:io selected.entry.data.type set value "take_incoming_items"
execute if score <has_available_attached_items> variable matches 1 run execute store result storage pandamium.db.click_events:io selected.entry.data.mail_id int 1 run scoreboard players get <mail_id> variable
execute if score <has_available_attached_items> variable matches 1 run data modify storage pandamium:temp take_incoming_items_click_event_root set from storage pandamium.db.click_events:io selected.entry.click_event_root
execute if score <has_available_attached_items> variable matches 1 run function pandamium:utils/database/click_events/save

execute if score <mail_is_ephemeral> variable matches 1 if score <has_available_attached_items> variable matches 0 run function pandamium:utils/database/click_events/load_new
execute if score <mail_is_ephemeral> variable matches 1 if score <has_available_attached_items> variable matches 0 run function pandamium:utils/database/click_events/modify/set_owner/from_self
execute if score <mail_is_ephemeral> variable matches 1 if score <has_available_attached_items> variable matches 0 run function pandamium:utils/database/click_events/modify/set_trigger {trigger: "mail"}
execute if score <mail_is_ephemeral> variable matches 1 if score <has_available_attached_items> variable matches 0 run data modify storage pandamium.db.click_events:io selected.entry.data.type set value "delete_ephemeral_mail"
execute if score <mail_is_ephemeral> variable matches 1 if score <has_available_attached_items> variable matches 0 run execute store result storage pandamium.db.click_events:io selected.entry.data.mail_id int 1 run scoreboard players get <mail_id> variable
execute if score <mail_is_ephemeral> variable matches 1 if score <has_available_attached_items> variable matches 0 run data modify storage pandamium:temp delete_ephemeral_mail_click_event_root set from storage pandamium.db.click_events:io selected.entry.click_event_root
execute if score <mail_is_ephemeral> variable matches 1 if score <has_available_attached_items> variable matches 0 run function pandamium:utils/database/click_events/save

# print
tellraw @s {"storage":"pandamium:temp","nbt":"menu_header","interpret":true}
execute if data storage pandamium.db.mail:io selected.entry.data.title run tellraw @s ["",{"text":"Title: ","color":"gray"},{"storage":"pandamium:temp","nbt":"display_title","interpret":true,"underlined":true}]
execute if data storage pandamium.db.mail:io selected.entry.data.message run tellraw @s ["",{"text":"Message:\n","color":"gray"},{"storage":"pandamium.db.mail:io","nbt":"selected.entry.data.message","interpret":true}]
execute if score <receiver_type_is_news_feed> variable matches 1 run tellraw @s [{"text":"Posted ","color":"gray"},{"storage":"pandamium:temp","nbt":"time_phrase","interpret":true}]
execute if score <receiver_type_is_news_feed> variable matches 0 run tellraw @s ["",{"text":"From: ","color":"gray"},[{"text":"","color":"aqua"},{"storage":"pandamium:temp","nbt":"sender_display_name","interpret":true}]," ",{"text":"[⌚]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":["Sent ",{"storage":"pandamium:temp","nbt":"time_phrase","interpret":true}]}}]
execute if score <receiver_type_is_news_feed> variable matches 0 unless data storage pandamium:temp {receiver_display_name:'"You"'} run tellraw @s ["",{"text":"To: ","color":"gray"},[{"text":"","color":"aqua"},{"storage":"pandamium:temp","nbt":"receiver_display_name","interpret":true}]]

execute if score <has_attached_items> variable matches 1 if score <has_available_attached_items> variable matches 1 run tellraw @s ["",{"text":"Attachments: ","color":"gray"},[{"storage":"pandamium:temp","nbt":"take_incoming_items_click_event_root","interpret":true},{"text":"[Take Attached Items]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to take the attached items from this mail","color":"blue"}]}}],{"storage":"pandamium:temp","nbt":"attached_items[{__viewable__:1b}].name","interpret":true,"separator":{"text":"\n• ","color":"gray"}}]
execute if score <has_attached_items> variable matches 1 if score <has_available_attached_items> variable matches 0 if score <has_viewable_attached_items> variable matches 1 run tellraw @s ["",{"text":"Attachments:","color":"gray"},{"storage":"pandamium:temp","nbt":"attached_items[{__viewable__:1b}].name","interpret":true,"separator":{"text":"\n• ","color":"gray","strikethrough":false},"strikethrough":true}]

execute if score <mail_is_ephemeral> variable matches 1 if score <has_available_attached_items> variable matches 0 run tellraw @s ["\n",[{"storage":"pandamium:temp","nbt":"delete_ephemeral_mail_click_event_root","interpret":true},{"text":"[Delete This Mail]","color":"#7AA4BB","hoverEvent":{"action":"show_text","contents":[{"text":"Click to delete this mail","color":"#7AA4BB"}]}}]]

execute unless predicate pandamium:mail_list_type/news_feed_inbox unless predicate pandamium:mail_list_type/staff_inbox run tellraw @s ["\n",{"text":"Pages: ","color":"yellow","bold":true},{"storage":"pandamium:dictionary","nbt":"triggers.mail.main_menu_button","interpret":true},{"text":" > ","color":"gray"},{"storage":"pandamium:dictionary","nbt":"triggers.mail.inbox_menu_button","interpret":true}]
execute if predicate pandamium:mail_list_type/news_feed_inbox run tellraw @s ["\n",{"text":"Pages: ","color":"yellow","bold":true},{"storage":"pandamium:dictionary","nbt":"triggers.mail.main_menu_button","interpret":true},{"text":" > ","color":"gray"},{"storage":"pandamium:dictionary","nbt":"triggers.mail.news_feed_menu_button","interpret":true}]
execute if predicate pandamium:mail_list_type/staff_inbox run tellraw @s ["\n",{"text":"Pages: ","color":"yellow","bold":true},{"storage":"pandamium:dictionary","nbt":"triggers.mail.main_menu_button","interpret":true},{"text":" > ","color":"gray"},{"storage":"pandamium:dictionary","nbt":"triggers.mail.staff_inbox_menu_button","interpret":true}]
tellraw @s {"text":"======================","color":"aqua"}
