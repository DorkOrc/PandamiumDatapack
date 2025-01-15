# input:
# - storage pandamium:text input
# output:
# - storage pandamium:text output

function pandamium:impl/text/get_substrings/main

# return empty string if there are no substrings
execute unless data storage pandamium:text substrings[0] run return run data modify storage pandamium:text output set value []

data modify storage pandamium:text output set value []

# else, iterate through characters in substrings and concatenate into one string
function pandamium:utils/reset_concat_template
execute store result storage pandamium:local functions."pandamium:impl/text/get_lines/*".index int 1 run scoreboard players set <index> variable 0
function pandamium:impl/text/get_lines/loop with storage pandamium:local functions."pandamium:impl/text/get_lines/*"

function pandamium:impl/text/get_lines/new_line with storage pandamium:templates concat
