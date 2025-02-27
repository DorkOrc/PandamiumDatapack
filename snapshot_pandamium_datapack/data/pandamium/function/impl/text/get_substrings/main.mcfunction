# input:
# - storage pandamium:text input
# output:
# - storage pandamium:text substrings

# Gets all of the non-empty strings in the input, in the order that they would appear. 
# Ignores translations and keybinds.

# resolve input
function pandamium:utils/text/input/resolve

# initialise substrings list
data modify storage pandamium:text substrings set value []

# if the input is just a string, just return that into the substrings list
execute unless data storage pandamium:text input{} run return run data modify storage pandamium:text substrings append from storage pandamium:text input

# otherwise, iterate through the text components
data modify storage pandamium:local functions."pandamium:impl/text/get_substrings/*".stack set value []
data modify storage pandamium:local functions."pandamium:impl/text/get_substrings/*".stack append from storage pandamium:text input
execute if data storage pandamium:local functions."pandamium:impl/text/get_substrings/*".stack[0] run function pandamium:impl/text/get_substrings/loop
return 1
