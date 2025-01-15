# input:
# - storage pandamium:text input
# output:
# - storage pandamium:text input

# if the input is a compound with a empty key, copy the value of that child to the root
execute if data storage pandamium:text input."" run data modify storage pandamium:text input set from storage pandamium:text input.""

# ignore if the input is already a compound
execute if data storage pandamium:text input{} run return 1

# resolve the input if it is a list
execute if data storage pandamium:text input[0] run return run function pandamium:impl/text/resolve_input/main

# move string to to `text` child of a compound if it is a string
data modify storage pandamium:local functions."pandamium:utils/text/input/force_compound".text set from storage pandamium:text input
data modify storage pandamium:text input set value {}
data modify storage pandamium:text input.text set from storage pandamium:local functions."pandamium:utils/text/input/force_compound".text
