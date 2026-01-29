# if no name is present, default to error name
execute unless data storage pandamium:local functions."pandamium:triggers/mail/print_received_mail_menu/resolve_attachment_names/*".this.name run return run \
    data modify storage pandamium:local functions."pandamium:triggers/mail/print_received_mail_menu/resolve_attachment_names/*".this.name set value \
        {color:"red",text:"Unknown Item",hover_event:{action:"show_text",value:{color:"red",text:"An error occurred whilst trying to display this item's tooltip."}}}

# try to resolve the text component. If successful, continue.
data remove storage do:io input
data modify storage do:io input set from storage pandamium:local functions."pandamium:triggers/mail/print_received_mail_menu/resolve_attachment_names/*".this.name
function do:text/resolve
execute unless data storage do:io {output:""} run return 1

# If unsuccessful, remove tooltip and try again.
data modify storage pandamium:local functions."pandamium:triggers/mail/print_received_mail_menu/resolve_attachment_names/*".this.name.hover_event{action:"show_item"} set value {action:"show_text",value:{color:"red",text:"An error occurred whilst trying to display this item's tooltip."}}
data modify storage pandamium:local functions."pandamium:triggers/mail/print_received_mail_menu/resolve_attachment_names/*".this.name.extra[].hover_event{action:"show_item"} set value {action:"show_text",value:{color:"red",text:"An error occurred whilst trying to display this item's tooltip."}}
data modify storage do:io input set from storage pandamium:local functions."pandamium:triggers/mail/print_received_mail_menu/resolve_attachment_names/*".this.name
function do:text/resolve
execute unless data storage do:io {output:""} run return 1

# If unsuccessful, set name to generic "Unknown Item" text
data modify storage pandamium:local functions."pandamium:triggers/mail/print_received_mail_menu/resolve_attachment_names/*".this.name set value {color:"red",text:"Unknown Item",hover_event:{action:"show_text",value:{color:"red",text:"An error occurred whilst trying to display this item's tooltip."}}}
