# if no name is present, default to error name
execute unless data storage pandamium:local functions."pandamium:triggers/mail/print_inbox_outbox_menu/resolve_attachment_names/*".this.name run return run \
    data modify storage pandamium:local functions."pandamium:triggers/mail/print_inbox_outbox_menu/resolve_attachment_names/*".this.name set value \
        {color:"red",text:"Unknown Item"}

# remove hover events
data remove storage pandamium:local functions."pandamium:triggers/mail/print_inbox_outbox_menu/resolve_attachment_names/*".this.name.hover_event
data remove storage pandamium:local functions."pandamium:triggers/mail/print_inbox_outbox_menu/resolve_attachment_names/*".this.name.extra[].hover_event

# try to resolve the text component. If successful, continue.
data remove storage pandamium:text input
data modify storage pandamium:text input set from storage pandamium:local functions."pandamium:triggers/mail/print_inbox_outbox_menu/resolve_attachment_names/*".this.name
function pandamium:utils/text/input/resolve
execute unless data storage pandamium:text {input:""} run return 1

# If unsuccessful, set name to generic "Unknown Item" text
data modify storage pandamium:local functions."pandamium:triggers/mail/print_inbox_outbox_menu/resolve_attachment_names/*".this.name set value {color:"red",text:"Unknown Item"}
