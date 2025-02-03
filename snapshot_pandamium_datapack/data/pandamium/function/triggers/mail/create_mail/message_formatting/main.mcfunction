data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".lines set from storage pandamium:temp message_lines
data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".result set value [{strings:[]}]

function pandamium:triggers/mail/create_mail/message_formatting/loop

data modify storage pandamium:text input set from storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".result[-1].strings
function pandamium:utils/text/concatenate_strings/with_separator {args:["\n"]}
data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".result[-1].text set from storage pandamium:text output

data modify storage pandamium:text input set from storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".result
function pandamium:utils/text/input/resolve
data modify storage pandamium.db.mail:io selected.entry.data.message set from storage pandamium:text input
