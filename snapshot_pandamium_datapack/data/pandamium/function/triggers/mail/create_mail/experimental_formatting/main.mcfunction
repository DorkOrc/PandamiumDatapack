data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/experimental_formatting/*".lines set from storage pandamium:text lines
data modify storage pandamium:text input set value [{text:""}]

execute if data storage pandamium:local functions."pandamium:triggers/mail/create_mail/experimental_formatting/*".lines[0] run function pandamium:triggers/mail/create_mail/experimental_formatting/loop

data remove storage pandamium:text input[-1].extra
function pandamium:utils/text/input/resolve
data modify storage pandamium.db.mail:io selected.entry.data.message set from storage pandamium:text input
