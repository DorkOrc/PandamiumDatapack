scoreboard players set <formatted> variable 1

data modify storage pandamium:text input set from storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".result[-1].strings
function pandamium:utils/text/concatenate_strings/with_separator {args:["\n"]}
data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".result[-1].text set from storage pandamium:text output

data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".lines[0] set string storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".lines[0] 2

data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".prefix set string storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".lines[0] 0 1
execute if data storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*"{prefix:" "} run data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".result[-1].extra append value " "
execute if data storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*"{prefix:" "} run data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".lines[0] set string storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".lines[0] 1

data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".result append value {color:"blue",underlined:true,hover_event:{action:"show_text",value:{color:"blue",text:"Click to open URL",extra:[{text:"\n\n"},{color:"dark_gray",text:""}]}},click_event:{action:"open_url"}}
data modify storage pandamium:text input set from storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".lines[0]
function pandamium:utils/text/split {args:["$"]}
data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".result[-1].text set from storage pandamium:text output[0]
data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".result[-1].hover_event.value.extra[1].text set from storage pandamium:text output[1]
data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".result[-1].hover_event.value.text set from storage pandamium:text output[2]
data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".result[-1].click_event.url set from storage pandamium:text output[1]

data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".suffix set string storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".result[-1].text -1
execute if data storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*"{suffix:" "} run data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".result[-1].extra append value {text:" ",underlined:false}
execute if data storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*"{suffix:" "} run data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".result[-1].text set string storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".result[-1].text 0 -1

data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/message_formatting/*".result append value {strings:[]}
