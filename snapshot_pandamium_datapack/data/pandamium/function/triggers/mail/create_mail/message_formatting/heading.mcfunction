scoreboard players set <formatted> variable 1

data modify storage pandamium:text input set from storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".result[-1].strings
data modify storage pandamium:text input append value ""
function pandamium:utils/text/concatenate_strings/with_separator {args:["\n"]}
data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".result[-1].text set from storage pandamium:text output

data modify storage pandamium:text input set string storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".lines[0] 2
function pandamium:utils/text/strip_leading_whitespace
data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".result append value {bold:true}
data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".result[-1].text set from storage pandamium:text output

data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".result append value {strings:[""]}
