# menus
execute if score @s mail matches 1 run return run function pandamium:triggers/mail/print_start_menu/main
execute if score @s mail matches 1000001 run return run function pandamium:triggers/mail/print_inbox_outbox_menu/main {type:inbox}
execute if score @s mail matches 1000002 run return run function pandamium:triggers/mail/print_inbox_outbox_menu/main {type:outbox}
execute if score @s mail matches 1000003 run return run function pandamium:triggers/mail/print_selection_menu/main

# create mail
execute if score @s mail matches 2..999999 run return run function pandamium:triggers/mail/create_mail/main

# send mail
execute if score @s mail matches -1999999..-1000001 run return run function pandamium:triggers/mail/send_mail/main

# open mail
execute if score @s mail matches -2999999..-2000001 run return run function pandamium:triggers/mail/open_mail/main

# else
tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
