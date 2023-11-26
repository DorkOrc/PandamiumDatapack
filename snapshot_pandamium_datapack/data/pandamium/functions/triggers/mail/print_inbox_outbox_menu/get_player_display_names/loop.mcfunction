function pandamium:utils/get/display_name/from_id with storage pandamium:temp entry_info.receivers[0]
data modify storage pandamium:temp entry_info.receivers[0].display_name set from storage pandamium:temp display_name

data modify storage pandamium:temp display_names append from storage pandamium:temp entry_info.receivers[0]
data remove storage pandamium:temp entry_info.receivers[0]
execute if data storage pandamium:temp entry_info.receivers[0] run function pandamium:triggers/mail/print_inbox_outbox_menu/get_player_display_names/loop
