data remove storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".next_character
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".next_character set string storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".string 0 1

execute \
    unless data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*"{next_character:"\\"} \
    unless data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*"{next_character:"*"} \
    unless data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*"{previous_character:"\n",next_character:"-"} \
    unless data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*"{next_character:"["} \
    unless data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*"{next_character:"]",hyperlink_nodes:[{}]} \
        run return 0

execute if data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".hyperlink_nodes[1] run return run data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".hyperlink_nodes set value []

function pandamium:impl/text/parse_markdown/parse_string/append_string/main
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[-1].extra append from storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".next_character

data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".string set string storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".string 1
scoreboard players add <index> variable 1
