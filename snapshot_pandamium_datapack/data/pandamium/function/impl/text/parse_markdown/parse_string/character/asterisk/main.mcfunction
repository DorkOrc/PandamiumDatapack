function pandamium:impl/text/parse_markdown/parse_string/append_string/main

data remove storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".next_character
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".next_character set string storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".string 0 1

# double asterisk node
execute if data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*"{next_character:"*"} run return run function pandamium:impl/text/parse_markdown/parse_string/character/asterisk/double_asterisk

# else, single asterisk node
function pandamium:impl/text/parse_markdown/parse_string/character/asterisk/single_asterisk
