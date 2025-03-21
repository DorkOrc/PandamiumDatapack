data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".previous_character set from storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".this_character
data remove storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".this_character
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".this_character set string storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".string 0 1
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".string set string storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".string 1
scoreboard players add <index> variable 1
execute unless data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".slice_from store result storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".slice_from int 1 run scoreboard players get <index> variable

execute if data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*"{this_character:"*"} run function pandamium:impl/text/parse_markdown/character/asterisk/main
execute if data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*"{this_character:"-"} run function pandamium:impl/text/parse_markdown/character/hyphen/main

# loop
execute if score <index> variable < <final_index> variable run function pandamium:impl/text/parse_markdown/parse_string/loop
