execute unless score @s id matches 7 run data modify storage pandamium:temp menu_header set value '[{"text":"======== ","color":"aqua"},{"text":"Mail","bold":true}," ========"]'
execute if score @s id matches 7 run data modify storage pandamium:temp menu_header set value '[{"text":"======== ","color":"aqua"},{"text":"Femail","bold":true}," ========"]'

# menus
execute if score @s mail matches 1 run return run function pandamium:triggers/mail/print_start_menu/main
execute if score @s mail matches 1000001 run return run function pandamium:triggers/mail/print_inbox_outbox_menu/main {type: "inbox", self: true}
execute if score @s mail matches 1000002 run return run function pandamium:triggers/mail/print_inbox_outbox_menu/main {type: "outbox", self: true}
execute if score @s mail matches 1000003 run return run function pandamium:triggers/mail/print_selection_menu/main
execute if score @s mail matches 1000004 if score @s staff_perms matches 3.. if score @s send_extra_debug_info matches 2.. run return run function pandamium:triggers/mail/print_inbox_outbox_menu/main {type: "server_outbox", self: true}
execute if score @s mail matches 1000005 run return run function pandamium:triggers/mail/print_inbox_outbox_menu/main {type: "drafts", self: true}
execute if score @s mail matches 1000006 run return run function pandamium:triggers/mail/print_selection_menu/search_players

# create mail
execute if score @s mail matches 2..999999 run return run function pandamium:triggers/mail/create_mail/main

# open mail
execute if score @s mail matches -2999999..-2000001 run return run function pandamium:triggers/mail/open_mail/main

# open draft
execute if score @s mail matches -3999999..-3000001 run return run function pandamium:triggers/mail/open_draft/main

# dynamic click events
execute if score @s mail matches -2146999999..-2146000001 run return run function pandamium:triggers/mail/click_events/main

# else
tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
