# arguments: id

function pandamium:utils/database/mail/load/from_mail_id with storage pandamium:temp mail_ids[0]

data modify storage pandamium:temp entry_info set from storage pandamium.db:mail selected.entry

execute if score <is_inbox> variable matches 1 run data modify storage pandamium:temp entry_info.receivers[].show set value 0b
$execute if score <is_inbox> variable matches 1 run data modify storage pandamium:temp entry_info.receivers[{id:$(id)}].show set value 1b
execute if score <is_inbox> variable matches 1 run data remove storage pandamium:temp entry_info.receivers[{show:0b}]

execute store success score <read> variable if data storage pandamium:temp entry_info.receivers[{read:1b}]
execute if score <read> variable matches 0 run data modify storage pandamium:temp entry_info.receivers[0].read_status_colour set value '{"text":"","color":"white"}'
execute if score <read> variable matches 1 run data modify storage pandamium:temp entry_info.receivers[0].read_status_colour set value '{"text":"","color":"gray"}'

data modify storage pandamium:temp entry_info.sent_tag set value '""'
execute unless data storage pandamium:temp entry_info{sent:1b} run data modify storage pandamium:temp entry_info.sent_tag set value '{"text":" (Not Sent)","color":"gray"}'

function pandamium:utils/get/display_name/from_id with storage pandamium:temp entry_info.sender
data modify storage pandamium:temp entry_info.sender.display_name set from storage pandamium:temp display_name
execute if score <is_inbox> variable matches 0 run function pandamium:triggers/mail/print_inbox_outbox_menu/get_player_display_names/main

execute unless data storage pandamium:temp entry_info.data.title run data modify storage pandamium:temp entry_info.data.title set value '{"italic":true,"text":"Untitled Mail"}'

data modify storage pandamium:temp entry_info.mail_id_tooltip set value '""'
execute if score @s send_extra_debug_info matches 2.. run data modify storage pandamium:temp entry_info.mail_id_tooltip set value '[{"text":"\\nmail_id: ","color":"dark_gray"},{"storage":"pandamium:temp","nbt":"entry_info.mail_id"}]'

# trigger input
execute store result score <mail_id> variable run data get storage pandamium:temp entry_info.mail_id
scoreboard players set <view_trigger_value> variable -2000000
execute store result storage pandamium:templates macro.value.value int 1 run scoreboard players operation <view_trigger_value> variable -= <mail_id> variable

# time
function pandamium:triggers/mail/get_time_phrase

# print
function pandamium:triggers/mail/print_inbox_outbox_menu/print_line with storage pandamium:templates macro.value

data remove storage pandamium:temp mail_ids[0]
execute if data storage pandamium:temp mail_ids[0] run function pandamium:triggers/mail/print_inbox_outbox_menu/loop with storage pandamium:templates macro.id
