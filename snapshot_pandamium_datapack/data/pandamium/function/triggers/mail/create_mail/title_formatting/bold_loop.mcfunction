data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/title_formatting/*".result append value {}
data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/title_formatting/*".result[-1].text set from storage pandamium:text output[0]
data remove storage pandamium:text output[0]

data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/title_formatting/*".result append value {bold:true}
data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/title_formatting/*".result[-1].text set from storage pandamium:text output[0]
data remove storage pandamium:text output[0]

execute if data storage pandamium:text output[1] run function pandamium:triggers/mail/create_mail/title_formatting/bold_loop
