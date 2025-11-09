# input:
# - storage pandamium:text input
# output:
# - storage pandamium:text output

function pandamium:impl/text/get_substrings/main
execute unless data storage pandamium:text substrings[0] run return run data modify storage pandamium:text output set value ""
execute unless data storage pandamium:text substrings[1] run return run data modify storage pandamium:text output set from storage pandamium:text substrings[0]

data modify storage pandamium:text input set from storage pandamium:text substrings
function pandamium:utils/text/concatenate_strings

return 1
