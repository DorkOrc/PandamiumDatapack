# input:
# - storage pandamium:text input
# output:
# - storage pandamium:text output

function pandamium:impl/text/get_substrings/main
data modify storage pandamium:text input set from storage pandamium:text substrings
function pandamium:utils/text/concatenate_strings

return 1
