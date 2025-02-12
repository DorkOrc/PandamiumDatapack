# interpret as SNBT if prefixed with a backslash
data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/title_formatting/*".prefix set string storage pandamium:text output 0 1
execute if data storage pandamium:local functions."pandamium:triggers/mail/create_mail/title_formatting/*"{prefix:"\\"} run data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/title_formatting/*".snbt set string storage pandamium:text output 1
execute if data storage pandamium:local functions."pandamium:triggers/mail/create_mail/title_formatting/*"{prefix:"\\"} run return run function pandamium:triggers/mail/create_mail/title_formatting/snbt with storage pandamium:local functions."pandamium:triggers/mail/create_mail/title_formatting/*"

# apply bold font
data modify storage pandamium:text input set from storage pandamium:text output
function pandamium:utils/text/split {args:["*"]}

data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/title_formatting/*".result set value []
function pandamium:triggers/mail/create_mail/title_formatting/bold_loop

execute if data storage pandamium:text output[0] run data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/title_formatting/*".result append value {}
execute if data storage pandamium:text output[0] run data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/title_formatting/*".result[-1].text set from storage pandamium:text output[0]

execute unless data storage pandamium:text output[0] run data remove storage pandamium:local functions."pandamium:triggers/mail/create_mail/title_formatting/*".result[-1].bold
execute unless data storage pandamium:text output[0] run data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/title_formatting/*".result insert -2 value {text:"*"}

data remove storage pandamium:local functions."pandamium:triggers/mail/create_mail/title_formatting/*".result[{text:""}]

data modify storage pandamium:text input set from storage pandamium:local functions."pandamium:triggers/mail/create_mail/title_formatting/*".result
function pandamium:utils/text/input/resolve
data modify storage pandamium:text output set from storage pandamium:text input
