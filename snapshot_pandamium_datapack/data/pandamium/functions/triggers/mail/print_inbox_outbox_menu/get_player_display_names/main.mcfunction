data modify storage pandamium:temp display_names set value []

execute if data storage pandamium:temp entry_info.receivers[0] run function pandamium:triggers/mail/print_inbox_outbox_menu/get_player_display_names/loop

data modify storage pandamium:temp entry_info.receivers set from storage pandamium:temp display_names
