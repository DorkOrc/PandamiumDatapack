data modify storage pandamium:text input append value {text:""}

data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/experimental_formatting/*".this_line set from storage pandamium:local functions."pandamium:triggers/mail/create_mail/experimental_formatting/*".lines[0]
data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/experimental_formatting/*".1st_char set string storage pandamium:local functions."pandamium:triggers/mail/create_mail/experimental_formatting/*".this_line 0 1
data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/experimental_formatting/*".2nd_char set string storage pandamium:local functions."pandamium:triggers/mail/create_mail/experimental_formatting/*".this_line 1 2

# normal line
execute unless data storage pandamium:local functions."pandamium:triggers/mail/create_mail/experimental_formatting/*"{1st_char:"\\"} run data modify storage pandamium:text input[-1].text set from storage pandamium:local functions."pandamium:triggers/mail/create_mail/experimental_formatting/*".lines[0]
execute unless data storage pandamium:local functions."pandamium:triggers/mail/create_mail/experimental_formatting/*"{1st_char:"\\"} run return run data modify storage pandamium:text input[-1].extra set value ["\n"]

# formatted line
data remove storage pandamium:text input[-2].extra

execute if data storage pandamium:local functions."pandamium:triggers/mail/create_mail/experimental_formatting/*"{2nd_char:"{"} run data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/experimental_formatting/*".snbt set string storage pandamium:local functions."pandamium:triggers/mail/create_mail/experimental_formatting/*".this_line 1
execute if data storage pandamium:local functions."pandamium:triggers/mail/create_mail/experimental_formatting/*"{2nd_char:"{"} run return run function pandamium:triggers/mail/create_mail/experimental_formatting/snbt with storage pandamium:local functions."pandamium:triggers/mail/create_mail/experimental_formatting/*"

execute if data storage pandamium:local functions."pandamium:triggers/mail/create_mail/experimental_formatting/*"{2nd_char:"b"} run data modify storage pandamium:text input[-1].text set string storage pandamium:local functions."pandamium:triggers/mail/create_mail/experimental_formatting/*".this_line 2
execute if data storage pandamium:local functions."pandamium:triggers/mail/create_mail/experimental_formatting/*"{2nd_char:"b"} run return run data modify storage pandamium:text input[-1].bold set value true
