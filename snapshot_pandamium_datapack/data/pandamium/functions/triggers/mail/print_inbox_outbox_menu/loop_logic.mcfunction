# arguments: id, index

data remove storage pandamium.db:mail selected
$function pandamium:utils/database/mail/load/from_mail_id with storage pandamium:temp mail_ids[$(index)]
$execute unless data storage pandamium.db:mail selected run return run tellraw @s ["• ",{"text":"Invalid Mail","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Failed to load mail with arguments ","color":"red"},{"storage":"pandamium:temp","nbt":"mail_ids[$(index)]"}]}}]

data modify storage pandamium:temp entry_info set from storage pandamium.db:mail selected.entry

$execute if score <mail_list_type> variable matches 0 unless data storage pandamium:temp entry_info.receivers[{id:$(id)}] run return run tellraw @s ["• ",{"text":"Invalid Mail","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"You are not a receiver of this mail","color":"red"},{"storage":"pandamium:temp","nbt":"entry_info.mail_id_tooltip","interpret":true}]}}]
$execute if score <mail_list_type> variable matches 1..3 unless score <mail_list_type> variable matches 2 unless data storage pandamium:temp entry_info.sender{id:$(id)} run return run tellraw @s ["• ",{"text":"Invalid Mail","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"You are not a sender of this mail","color":"red"},{"storage":"pandamium:temp","nbt":"entry_info.mail_id_tooltip","interpret":true}]}}]
execute if score <mail_list_type> variable matches 3 unless data storage pandamium.db:mail selected.entry{sent:0b} run return run tellraw @s ["• ",{"text":"Invalid Mail","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"This mail has already been sent","color":"red"},{"storage":"pandamium:temp","nbt":"entry_info.mail_id_tooltip","interpret":true}]}}]

execute if score <mail_list_type> variable matches 0 run data modify storage pandamium:temp entry_info.receivers[].show set value 0b
$execute if score <mail_list_type> variable matches 0 run data modify storage pandamium:temp entry_info.receivers[{id:$(id)}].show set value 1b
execute if score <mail_list_type> variable matches 0 run data remove storage pandamium:temp entry_info.receivers[{show:0b}]

execute store success score <read> variable if data storage pandamium:temp entry_info.receivers[{read:1b}]
execute if score <read> variable matches 0 run data modify storage pandamium:temp entry_info.read_status_colour set value '{"text":"","color":"white"}'
execute if score <read> variable matches 1 run data modify storage pandamium:temp entry_info.read_status_colour set value '{"text":"","color":"gray"}'

function pandamium:utils/get/display_name/from_id with storage pandamium:temp entry_info.sender
data modify storage pandamium:temp entry_info.sender.display_name set from storage pandamium:temp display_name
execute if data storage pandamium:temp entry_info.sender{type:"server"} run data modify storage pandamium:temp entry_info.sender.display_name set value '"Server"'
execute if data storage pandamium:temp entry_info.sender{type:"staff"} run data modify storage pandamium:temp entry_info.sender.display_name set value '"The Staff Team"'
execute if score <mail_list_type> variable matches 1..3 run function pandamium:triggers/mail/print_inbox_outbox_menu/get_player_display_names/main

execute unless data storage pandamium:temp entry_info.data.title unless data storage pandamium:temp entry_info.data.message if data storage pandamium:temp entry_info.data.items[0] run data modify storage pandamium:temp entry_info.data.title set value '{"italic":true,"text":"Mailed Items"}'
execute unless data storage pandamium:temp entry_info.data.title run data modify storage pandamium:temp entry_info.data.title set value '{"italic":true,"text":"Untitled Mail"}'

data modify storage pandamium:temp entry_info.display_info_components set value []
execute if score <mail_list_type> variable matches 1..2 if data storage pandamium:temp entry_info.data.message run data modify storage pandamium:temp entry_info.display_info_components append value '["",{"text":"Message:\\n","color":"gray"},{"storage":"pandamium:temp","nbt":"entry_info.data.message","interpret":true}]'
execute unless score <mail_list_type> variable matches 1..2 if data storage pandamium:temp entry_info.data.preview run data modify storage pandamium:temp entry_info.display_info_components append value '["",{"text":"Preview:\\n","color":"gray"},{"storage":"pandamium:temp","nbt":"entry_info.data.preview","interpret":true}]'
execute if data storage pandamium:temp entry_info.data.items[0] unless data storage pandamium:temp entry_info.data.items[{taken:1b}] run data modify storage pandamium:temp entry_info.display_info_components append value '["",{"text":"Attachments:\\n• ","color":"gray"},{"storage":"pandamium:temp","nbt":"entry_info.data.items[].name","interpret":true,"separator":{"text":"\\n• ","color":"gray"}}]'
execute if data storage pandamium:temp entry_info.data.items[0] if data storage pandamium:temp entry_info.data.items[{taken:1b}] run data modify storage pandamium:temp entry_info.display_info_components append value '["",{"text":"Attachments:\\n• ","color":"gray"},{"storage":"pandamium:temp","nbt":"entry_info.data.items[].name","interpret":true,"separator":{"text":"\\n• ","color":"gray","strikethrough":false},"strikethrough":true}]'
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
