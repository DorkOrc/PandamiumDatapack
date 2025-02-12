data modify storage pandamium:local functions."pandamium:triggers/mail/print_received_mail_menu/resolve_attachment_names/*".attachments set value []
data modify storage pandamium:local functions."pandamium:triggers/mail/print_received_mail_menu/resolve_attachment_names/*".attachments append from storage pandamium:temp attached_items[{__viewable__:1b}]
data modify storage pandamium:local functions."pandamium:triggers/mail/print_received_mail_menu/resolve_attachment_names/*".result set value []

execute if data storage pandamium:local functions."pandamium:triggers/mail/print_received_mail_menu/resolve_attachment_names/*".attachments[0] run function pandamium:triggers/mail/print_received_mail_menu/resolve_attachment_names/loop

data modify storage pandamium:temp attached_items set from storage pandamium:local functions."pandamium:triggers/mail/print_received_mail_menu/resolve_attachment_names/*".result
