# input:
# - storage pandamium:text input

# Returns 1 if there is at least one non-empty string in the input.
# Assumes translations and keybinds are non-empty.

# resolve input
function pandamium:utils/text/input/resolve

# iterate through the text components
data modify storage pandamium:local functions."pandamium:impl/text/test_non_empty/*".stack set value []
data modify storage pandamium:local functions."pandamium:impl/text/test_non_empty/*".stack append from storage pandamium:text input

return run function pandamium:impl/text/test_non_empty/loop
