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
execute if score @s mail matches 1000007 run return run function pandamium:triggers/mail/print_inbox_outbox_menu/main {type: "news_feed_inbox", self: true}
execute if score @s mail matches 1000008 if score @s staff_perms matches 1.. run return run function pandamium:triggers/mail/print_inbox_outbox_menu/main {type: "staff_inbox", self: true}

execute if score @s mail matches 1000101 run scoreboard players set @s mail_data.inbox_tab 0
execute if score @s mail matches 1000102 run scoreboard players set @s mail_data.inbox_tab 1
execute if score @s mail matches 1000103 run scoreboard players set @s mail_data.inbox_tab 2
execute if score @s mail matches 1000101..1000103 run return run function pandamium:triggers/mail/print_inbox_outbox_menu/main {type: "inbox", self: true}

# create mail
execute if score @s mail matches 2..999999 run return run function pandamium:triggers/mail/create_mail/main
execute if score @s mail matches 1000201 unless score @s staff_perms matches 1.. run return run function pandamium:triggers/mail/create_mail/main
execute if score @s mail matches 1000202 run return run function pandamium:triggers/mail/create_mail/main

# open mail
execute if score @s mail matches -2999999..-2000001 run return run function pandamium:triggers/mail/open_mail/main

# open draft
execute if score @s mail matches -3999999..-3000001 run return run function pandamium:triggers/mail/open_draft/main

# dynamic click events
execute if score @s mail matches -2146999999..-2146000001 run return run function pandamium:triggers/mail/click_events/main

# else
tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
