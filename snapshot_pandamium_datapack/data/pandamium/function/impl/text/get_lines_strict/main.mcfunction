# input:
# - storage pandamium:text input
# output:
# - storage pandamium:text output

function pandamium:utils/text/flatten

# return empty string if there are no substrings
execute if data storage pandamium:text {output:""} run return run data modify storage pandamium:text output set value [""]

# iterate through characters from the input and append line whenever a \n is reached
data modify storage pandamium:local functions."pandamium:impl/text/get_lines_strict/*".original_string set from storage pandamium:text output
data modify storage pandamium:local functions."pandamium:impl/text/get_lines_strict/*".string set from storage pandamium:text output
data modify storage pandamium:text output set value []

scoreboard players set <line_start_index> variable 0
scoreboard players set <line_end_index> variable 0
scoreboard players set <current_index> variable -1
function pandamium:impl/text/get_lines_strict/loop

function pandamium:impl/text/get_lines_strict/found_new_line

tellraw @a {storage:"pandamium:text",nbt:"output"}
