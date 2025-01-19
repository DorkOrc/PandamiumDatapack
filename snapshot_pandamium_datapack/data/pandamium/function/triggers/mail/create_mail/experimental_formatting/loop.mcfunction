function pandamium:triggers/mail/create_mail/experimental_formatting/loop_logic

data remove storage pandamium:local functions."pandamium:triggers/mail/create_mail/experimental_formatting/*".lines[0]
execute if data storage pandamium:local functions."pandamium:triggers/mail/create_mail/experimental_formatting/*".lines[0] run function pandamium:triggers/mail/create_mail/experimental_formatting/loop
