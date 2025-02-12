data remove storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".prefix
data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".prefix set string storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".lines[0] 0 2

scoreboard players set <formatted> variable 0
execute if data storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*"{prefix:"@@"} run function pandamium:triggers/mail/create_mail/message_formatting/url
execute if data storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*"{prefix:"# "} run function pandamium:triggers/mail/create_mail/message_formatting/heading
execute if data storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*"{prefix:"> "} run function pandamium:triggers/mail/create_mail/message_formatting/quote

execute if score <formatted> variable matches 0 run data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".result[-1].strings append from storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".lines[0]

data remove storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".lines[0]
execute if data storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".lines[0] run function pandamium:triggers/mail/create_mail/message_formatting/loop
