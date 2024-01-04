# arguments: id

function pandamium:triggers/mail/print_inbox_outbox_menu/loop_logic with storage pandamium:templates macro.id

data remove storage pandamium:temp mail_ids[0]
execute if data storage pandamium:temp mail_ids[0] run function pandamium:triggers/mail/print_inbox_outbox_menu/loop with storage pandamium:templates macro.id
