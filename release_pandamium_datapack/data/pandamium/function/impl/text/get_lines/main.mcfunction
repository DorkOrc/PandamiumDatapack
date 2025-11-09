# input:
# - storage pandamium:text input
# output:
# - storage pandamium:text output

function pandamium:utils/text/flatten

# return empty string if there are no substrings
execute if data storage pandamium:text {output:""} run return run data modify storage pandamium:text output set value [""]

# iterate through characters from the input and append line whenever a \n is reached
data modify storage pandamium:local functions."pandamium:impl/text/get_lines/*".original_string set from storage pandamium:text output
data modify storage pandamium:local functions."pandamium:impl/text/get_lines/*".string set from storage pandamium:text output
data modify storage pandamium:text output set value []

execute store result storage pandamium:local functions."pandamium:impl/text/get_lines/*".line_start_index int 1 run scoreboard players set <line_start_index> variable 0
scoreboard players set <current_index> variable -1
function pandamium:impl/text/get_lines/loop

execute store result storage pandamium:local functions."pandamium:impl/text/get_lines/*".current_index int 1 run scoreboard players add <current_index> variable 1
function pandamium:impl/text/get_lines/new_line with storage pandamium:local functions."pandamium:impl/text/get_lines/*"
