data remove storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".next_character
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".next_character set string storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".string 0 1

# bullet point
execute if data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*"{previous_character:"\n",next_character:" "} run return run function pandamium:impl/text/parse_markdown/character/hyphen/bullet_point
