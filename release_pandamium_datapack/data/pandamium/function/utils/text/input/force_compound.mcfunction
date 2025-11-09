# input:
# - storage pandamium:text input
# output:
# - storage pandamium:text input

# Converts the input into a compound. 
# If the input is a string, it sets the output to a compound with a `text` field and that string copied to it. 
# If the input is a list, it resolves the text component.

scoreboard players set <text_utility_used> global 1

# ignore if the input is already a compound
execute if data storage pandamium:text input{} run return 1

# resolve the input if it is a list
execute if data storage pandamium:text input[0] run return run function pandamium:utils/text/input/resolve

# move string to to `text` child of a compound if it is a string
data modify storage pandamium:local functions."pandamium:utils/text/input/force_compound".text set from storage pandamium:text input
data modify storage pandamium:text input set value {}
data modify storage pandamium:text input.text set from storage pandamium:local functions."pandamium:utils/text/input/force_compound".text
