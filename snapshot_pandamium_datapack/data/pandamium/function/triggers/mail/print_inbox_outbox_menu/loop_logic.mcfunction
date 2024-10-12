# arguments: id, index

data remove storage pandamium.db.mail:io selected
data modify storage pandamium:temp raw_entry set value {}
$data modify storage pandamium:temp raw_entry set from storage pandamium:temp mail_ids[$(index)]
function pandamium:utils/database/mail/load/from_mail_id with storage pandamium:temp raw_entry
execute unless data storage pandamium.db.mail:io selected run return run tellraw @s ["• ",{"text":"Invalid Mail","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Failed to load mail with arguments ","color":"red"},{"storage":"pandamium:temp","nbt":"raw_entry"}]}}]

data modify storage pandamium:temp entry_info set from storage pandamium.db.mail:io selected.entry
execute if score @s send_extra_debug_info matches 2.. run data modify storage pandamium:temp entry_info.mail_id_tooltip set value '[{"text":"\\nmail_id: ","color":"dark_gray"},{"storage":"pandamium:temp","nbt":"entry_info.mail_id"}]'

$execute if predicate pandamium:mail_list_type/any_inbox if score <self> variable matches 1 unless data storage pandamium:temp entry_info{receiver_type:"news_feed"} unless data storage pandamium:temp entry_info.receivers[{id:$(id)}] run return run tellraw @s ["• ",{"text":"Invalid Mail","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"You are not a receiver of this mail","color":"red"},{"storage":"pandamium:temp","nbt":"entry_info.mail_id_tooltip","interpret":true}]}}]
$execute if predicate pandamium:mail_list_type/outbox_or_drafts if score <self> variable matches 1 unless data storage pandamium:temp entry_info.sender{id:$(id)} run return run tellraw @s ["• ",{"text":"Invalid Mail","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"You are not a sender of this mail","color":"red"},{"storage":"pandamium:temp","nbt":"entry_info.mail_id_tooltip","interpret":true}]}}]
execute if predicate pandamium:mail_list_type/drafts unless data storage pandamium.db.mail:io selected.entry{sent:0b} run return run tellraw @s ["• ",{"text":"Invalid Mail","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"This mail has already been sent","color":"red"},{"storage":"pandamium:temp","nbt":"entry_info.mail_id_tooltip","interpret":true}]}}]

execute if predicate pandamium:mail_list_type/inbox run data modify storage pandamium:temp entry_info.receivers[].show set value 0b
$execute if predicate pandamium:mail_list_type/inbox run data modify storage pandamium:temp entry_info.receivers[{id:$(id)}].show set value 1b
execute if predicate pandamium:mail_list_type/inbox run data remove storage pandamium:temp entry_info.receivers[{show:0b}]

execute store success score <read> variable if data storage pandamium:temp entry_info.receivers[{read:1b}]
execute if score <read> variable matches 0 run data modify storage pandamium:temp entry_info.read_status_colour set value '{"text":"","color":"white"}'
execute if score <read> variable matches 1 run data modify storage pandamium:temp entry_info.read_status_colour set value '{"text":"","color":"gray"}'

function pandamium:utils/get/display_name/from_id with storage pandamium:temp entry_info.sender
data modify storage pandamium:temp entry_info.sender.display_name set from storage pandamium:temp display_name
execute if data storage pandamium:temp entry_info.sender{type:"server"} run data modify storage pandamium:temp entry_info.sender.display_name set value '{"text":"Server","color":"#FF0000"}'
execute if data storage pandamium:temp entry_info.sender{type:"staff"} run data modify storage pandamium:temp entry_info.sender.display_name set value '{"text":"The Staff Team","color":"yellow"}'

execute if predicate pandamium:mail_list_type/any_outbox_or_drafts if data storage pandamium:temp entry_info{receiver_type:"news_feed"} run data modify storage pandamium:temp entry_info.receivers set value [{display_name:'"News Feed"'}]
execute if predicate pandamium:mail_list_type/any_outbox_or_drafts if data storage pandamium:temp entry_info{receiver_type:"staff"} run data modify storage pandamium:temp entry_info.receivers set value [{display_name:'"The Staff Team"'}]
execute if predicate pandamium:mail_list_type/any_outbox_or_drafts unless data storage pandamium:temp entry_info{receiver_type:"news_feed"} unless data storage pandamium:temp entry_info{receiver_type:"staff"} run function pandamium:triggers/mail/print_inbox_outbox_menu/get_player_display_names/main

execute unless data storage pandamium:temp entry_info.data.title unless data storage pandamium:temp entry_info.data.message if data storage pandamium:temp entry_info.data.items[0] run data modify storage pandamium:temp entry_info.data.title set value '{"italic":true,"text":"Mailed Items"}'
execute unless data storage pandamium:temp entry_info.data.title run data modify storage pandamium:temp entry_info.data.title set value '{"italic":true,"text":"Untitled Mail"}'

# attachments
execute store success score <has_attached_items> variable if data storage pandamium:temp entry_info.data.items[0]

execute if score <has_attached_items> variable matches 1 run data modify storage pandamium:temp entry_info.data.items[].__taken__ set value 0b
execute if score <has_attached_items> variable matches 1 if data storage pandamium:temp entry_info.data.items[{taken:1b}] run data modify storage pandamium:temp entry_info.data.items[{taken:1b}].__taken__ set value 1b

execute if score <has_attached_items> variable matches 1 run data modify storage pandamium:temp entry_info.data.items[].__viewable__ set value 1b
execute unless predicate pandamium:mail_list_type/any_outbox if score <has_attached_items> variable matches 1 if data storage pandamium:temp entry_info.data.items[{private:{}}] run data modify storage pandamium:temp entry_info.data.items[{private:{}}].__viewable__ set value 0b
execute unless predicate pandamium:mail_list_type/any_outbox if score <has_attached_items> variable matches 1 store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id
execute unless predicate pandamium:mail_list_type/any_outbox if score <has_attached_items> variable matches 1 run function pandamium:triggers/mail/print_inbox_outbox_menu/set_viewable_attachments with storage pandamium:templates macro.id

scoreboard players set <has_available_attached_items> variable 0
execute if score <has_attached_items> variable matches 1 if data storage pandamium:temp entry_info.data.items[{__viewable__:1b,__taken__:0b}] run scoreboard players set <has_available_attached_items> variable 1

scoreboard players set <has_viewable_attached_items> variable 0
execute if score <has_attached_items> variable matches 1 if data storage pandamium:temp entry_info.data.items[{__viewable__:1b}] run scoreboard players set <has_viewable_attached_items> variable 1

execute if score <has_attached_items> variable matches 1 run data modify storage pandamium:temp entry_info.data.items prepend value {name:'""',__viewable__:1b,taken:1b,__taken__:0b}

# display components
data modify storage pandamium:temp entry_info.display_info_components set value []
execute if predicate pandamium:mail_list_type/any_outbox_or_drafts if data storage pandamium:temp entry_info.data.message run data modify storage pandamium:temp entry_info.display_info_components append value '["",{"text":"Message:\\n","color":"gray"},{"storage":"pandamium:temp","nbt":"entry_info.data.message","interpret":true}]'
execute if predicate pandamium:mail_list_type/any_inbox if data storage pandamium:temp entry_info.data.preview if score <self> variable matches 1 run data modify storage pandamium:temp entry_info.display_info_components append value '["",{"text":"Preview:\\n","color":"gray"},{"storage":"pandamium:temp","nbt":"entry_info.data.preview","interpret":true},{"text":"...","color":"gray"}]'
execute if predicate pandamium:mail_list_type/any_inbox if data storage pandamium:temp entry_info.data.preview if score <self> variable matches 0 run data modify storage pandamium:temp entry_info.display_info_components append value '["",{"text":"Message:\\n","color":"gray"},{"storage":"pandamium:temp","nbt":"entry_info.data.message","interpret":true}]'
execute if score <has_viewable_attached_items> variable matches 1 run data modify storage pandamium:temp entry_info.display_info_components append value '["",{"text":"Attachments:","color":"gray"},{"storage":"pandamium:temp","nbt":"entry_info.data.items[{__viewable__:1b,taken:1b}].name","interpret":true,"strikethrough":true,"separator":{"text":"\\n• ","color":"gray","strikethrough":false}},{"storage":"pandamium:temp","nbt":"entry_info.data.items[{__viewable__:1b,__taken__:0b}].name","interpret":true,"separator":{"text":"\\n• ","color":"gray"}}]'
execute if score @s send_extra_debug_info matches 2.. run data modify storage pandamium:temp entry_info.display_info_components append value '[{"text":"mail_id: ","color":"dark_gray"},{"storage":"pandamium:temp","nbt":"entry_info.mail_id"}]'

# time
function pandamium:triggers/mail/get_time_phrase

# trigger input
execute store result score <mail_id> variable run data get storage pandamium:temp entry_info.mail_id

scoreboard players set <open_mail_input_value> variable -2000000
execute store result storage pandamium:templates macro.open_mail_input_value__open_draft_input_value.open_mail_input_value int 1 run scoreboard players operation <open_mail_input_value> variable -= <mail_id> variable

scoreboard players set <open_draft_input_value> variable -3000000
execute store result storage pandamium:templates macro.open_mail_input_value__open_draft_input_value.open_draft_input_value int 1 run scoreboard players operation <open_draft_input_value> variable -= <mail_id> variable

# print
function pandamium:triggers/mail/print_inbox_outbox_menu/print_line with storage pandamium:templates macro.open_mail_input_value__open_draft_input_value
