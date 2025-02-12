# copy and pop 0th index to "this"
data modify storage pandamium:local functions."pandamium:triggers/mail/print_inbox_outbox_menu/resolve_attachment_names/*".this set from storage pandamium:local functions."pandamium:triggers/mail/print_inbox_outbox_menu/resolve_attachment_names/*".attachments[0]
data remove storage pandamium:local functions."pandamium:triggers/mail/print_inbox_outbox_menu/resolve_attachment_names/*".attachments[0]

# check "this" and modify if necessary
function pandamium:triggers/mail/print_inbox_outbox_menu/resolve_attachment_names/loop_logic

# append "this" to result
data modify storage pandamium:local functions."pandamium:triggers/mail/print_inbox_outbox_menu/resolve_attachment_names/*".result append from storage pandamium:local functions."pandamium:triggers/mail/print_inbox_outbox_menu/resolve_attachment_names/*".this

# loop if necessary
execute if data storage pandamium:local functions."pandamium:triggers/mail/print_inbox_outbox_menu/resolve_attachment_names/*".attachments[0] run function pandamium:triggers/mail/print_inbox_outbox_menu/resolve_attachment_names/loop
